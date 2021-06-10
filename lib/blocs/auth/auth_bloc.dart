import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart'
    hide AuthException;
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/backend_service.dart';
import 'package:habitr/services/data_service.dart';
import 'package:habitr/services/preferences_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/error.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.g.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static const stateKey = 'auth_bloc_state';

  final AuthService _authService;
  final BackendService _backendService;
  final DataService _dataService;
  final PreferencesService _preferencesService;
  final StorageService _storageService;

  /// Used to restore state from previous session.
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = json['state'] as Map<String, dynamic>?;
    switch (json['runtimeType']) {
      case 'AuthInFlow':
        return AuthInFlow.fromJson(state!);
    }
  }

  AuthBloc(
    this._authService,
    this._backendService,
    this._dataService,
    this._preferencesService,
    this._storageService,
  ) : super(const AuthInitial());

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);

    // Writes the current state ("nextState") to SharedPrefs so that if the
    // user closes the app mid-login, for example if they're on the verify
    // screen, then we can pick up where they left off.
    final nextState = transition.nextState;
    if (nextState is AuthInitial || nextState is AuthLoading) {
      return;
    }
    _preferencesService.setString(
      stateKey,
      jsonEncode({
        'runtimeType': nextState.runtimeType.toString(),
        'state': nextState.toJson(),
      }),
    );
  }

  @override
  Future<void> close() async {
    await _userUpdates?.cancel();
    await _exceptionController.close();
    return super.close();
  }

  final _exceptionController = StreamController<AuthException>.broadcast();

  /// Streams exceptions for handling outside of the BLoC.
  Stream<AuthException> get exceptions => _exceptionController.stream;

  StreamSubscription<AuthEvent>? _userUpdates;

  // Cache login data to improve sign up/verify code flow.
  AuthData? _authData;

  final _initializedCompleter = Completer<void>();

  /// Completes when the initial auth state has been determined.
  Future<void> get isInitialized => _initializedCompleter.future;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthLoad) {
      yield* _loadInitialState();
    } else if (event is AuthLogin) {
      yield* _login(event.data);
    } else if (event is AuthSignUp) {
      yield* _signup(event.data);
    } else if (event is AuthVerify) {
      yield* _verify(event.code);
    } else if (event is AuthCompleteSignUp) {
      yield AuthLoggedIn(event.user);
    } else if (event is AuthUserUpdate) {
      yield AuthLoggedIn(event.user);
    } else if (event is AuthLogout) {
      yield* _logout();
    } else if (event is AuthChangeScreen) {
      yield AuthInFlow(event.screen);
    }
  }

  Stream<AuthState> _loadInitialState() async* {
    try {
      yield const AuthLoading();
      try {
        await _backendService.configure();
      } on Exception catch (e) {
        safePrint('Error configuring backend: $e');
      }

      try {
        final currentUser = await _authService.currentUser;
        if (currentUser != null) {
          await _storageService.precache(currentUser);
          yield AuthLoggedIn(currentUser);
          _userUpdates ??= _userEvents.listen(add);
          return;
        }
      } on Exception catch (e) {
        safePrint('Exception occurred getting user: $e');
      }

      final storedState = _preferencesService.getString(stateKey);
      if (storedState == null) {
        yield AuthInFlow.login();
        return;
      }

      final authState =
          fromJson(jsonDecode(storedState) as Map<String, dynamic>);
      yield authState ?? AuthInFlow.login();
    } finally {
      _initializedCompleter.complete();
    }
  }

  Stream<AuthEvent> get _userEvents async* {
    try {
      await for (var user in _authService.userUpdates) {
        yield AuthUserUpdate(user);
      }
    } on Exception catch (e) {
      yield AuthFailure(e);
    }
  }

  Stream<AuthState> _login(AuthData loginData) async* {
    try {
      _authData = loginData;
      if (loginData is AuthLoginData) {
        final user = await _authService.login(
          loginData.username!,
          loginData.password!,
        );
        await _storageService.precache(user);
        yield AuthLoggedIn(user);
        _userUpdates ??= _userEvents.listen(add);
      } else {
        final user = await _authService.loginWithProvider(loginData.provider!);
        if (user != null) {
          await _storageService.precache(user);
          if (user.displayUsername == null || user.displayUsername!.isEmpty) {
            yield AuthInFlow.addImage(user);
          } else {
            yield AuthLoggedIn(user);
          }
          _userUpdates ??= _userEvents.listen(add);
        }
      }
    } on UserNotConfirmedException {
      var username = loginData.username!;
      await _authService.resendVerificationCode(username);
      yield AuthInFlow.verify(username);
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _signup(AuthSignupData signupData) async* {
    try {
      _authData = signupData;
      await _authService.signUp(
        signupData.username!,
        signupData.password!,
        signupData.email,
      );
      yield AuthInFlow.verify(signupData.username!);
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _verify(String code) async* {
    assert(state is AuthInFlow);
    final username = (state as AuthInFlow).username;
    assert(username != null);
    try {
      await _authService.verify(username!, code);
      if (_authData?.username != null && _authData?.password != null) {
        final user = await _authService.login(
          _authData!.username!,
          _authData!.password!,
        );
        yield AuthInFlow.addImage(user);
      } else {
        showSuccessSnackbar('Signup complete! 🎉');
        yield AuthInFlow.login();
      }
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _logout() async* {
    try {
      await _authService.logout();
      _userUpdates?.cancel();
      _userUpdates = null;
      yield AuthInFlow.login();
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }
}
