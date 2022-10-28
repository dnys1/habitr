import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide Transition, Emitter;
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/backend_service.dart';
import 'package:habitr/services/preferences_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/error.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.g.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._authService,
    this._backendService,
    this._preferencesService,
    this._storageService,
  ) : super(const AuthInitial()) {
    on<AuthEvent>(mapEventToState, transformer: sequential());
  }

  static const stateKey = 'auth_bloc_state';

  final AuthService _authService;
  final BackendService _backendService;
  final PreferencesService _preferencesService;
  final StorageService _storageService;

  /// Used to restore state from previous session.
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = json['state'] as Map<String, dynamic>?;
    switch (json['runtimeType']) {
      case 'AuthInFlow':
        return AuthInFlow.fromJson(state!);
    }
    return null;
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);

    // Writes the current state ("nextState") to SharedPrefs so that if the
    // user closes the app mid-login--for example, if they're on the verify
    // screen--then we can pick up where they left off.
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

  /// Manages live user updates.
  StreamSubscription<AuthEvent>? _userUpdates;

  // Cache login data to improve sign up/verify code flow.
  AuthData? _authData;

  final _initializedCompleter = Completer<void>();

  /// Completes when the initial auth state has been determined.
  Future<void> get isInitialized => _initializedCompleter.future;

  Future<void> mapEventToState(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (event is AuthLoad) {
      return _loadInitialState(emit);
    } else if (event is AuthLogin) {
      return _login(event.data, emit);
    } else if (event is AuthSignUp) {
      return _signup(event.data, emit);
    } else if (event is AuthVerify) {
      return _verify(event.code, emit);
    } else if (event is AuthCompleteSignUp) {
      emit(AuthLoggedIn(event.user));
    } else if (event is AuthUserUpdate) {
      emit(AuthLoggedIn(event.user));
    } else if (event is AuthLogout) {
      return _logout(emit);
    } else if (event is AuthChangeScreen) {
      emit(AuthInFlow(event.screen));
    }
  }

  Future<void> _loadInitialState(Emitter<AuthState> emit) async {
    try {
      emit(const AuthLoading());
      try {
        await _backendService.configure();
      } on Exception catch (e) {
        safePrint('Error configuring backend: $e');
      }

      try {
        final currentUser = await _authService.currentUser;
        if (currentUser != null) {
          await _storageService.precache(currentUser);
          emit(AuthLoggedIn(currentUser));
          _userUpdates ??= _userEvents.listen(add);
          return;
        }
      } on Exception catch (e) {
        safePrint('Exception occurred getting user: $e');
      }

      final storedState = _preferencesService.getString(stateKey);
      if (storedState == null) {
        emit(AuthInFlow.login());
        return;
      }

      final authState =
          fromJson(jsonDecode(storedState) as Map<String, dynamic>);
      emit(authState ?? AuthInFlow.login());
    } finally {
      _initializedCompleter.complete();
    }
  }

  Stream<AuthEvent> get _userEvents async* {
    try {
      // vs. await for (var user in _authService.userUpdates),
      // this method correctly cancels the stream when this
      // generated stream is canceled.
      final stream = _authService.userUpdates.map(AuthUserUpdate.new);
      await for (final update in stream) {
        yield update;
      }
    } on Exception catch (e) {
      yield AuthFailure(e);
    }
  }

  Future<void> _login(
    AuthData loginData,
    Emitter<AuthState> emit,
  ) async {
    try {
      _authData = loginData;
      if (loginData is AuthLoginData) {
        final user = await _authService.login(
          loginData.username!,
          loginData.password!,
        );
        await _storageService.precache(user);
        emit(AuthLoggedIn(user));
        _userUpdates ??= _userEvents.listen(add);
      } else {
        final user = await _authService.loginWithProvider(loginData.provider!);
        if (user != null) {
          await _storageService.precache(user);
          if (user.displayUsername == null || user.displayUsername!.isEmpty) {
            emit(AuthInFlow.addImage(user));
          } else {
            emit(AuthLoggedIn(user));
          }
          _userUpdates ??= _userEvents.listen(add);
        }
      }
    } on UserNotConfirmedException {
      final username = loginData.username!;
      await _authService.resendVerificationCode(username);
      emit(AuthInFlow.verify(username));
    } on Exception catch (e) {
      _exceptionController.add(AuthException.fromException(e));
    }
  }

  Future<void> _signup(
    AuthSignupData signupData,
    Emitter<AuthState> emit,
  ) async {
    try {
      _authData = signupData;
      await _authService.signUp(
        signupData.username!,
        signupData.password!,
        signupData.email,
      );
      emit(AuthInFlow.verify(signupData.username!));
    } on Exception catch (e) {
      _exceptionController.add(AuthException.fromException(e));
    }
  }

  Future<void> _verify(String code, Emitter<AuthState> emit) async {
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
        emit(AuthInFlow.addImage(user));
      } else {
        showSuccessSnackbar('Signup complete! 🎉');
        emit(AuthInFlow.login());
      }
    } on Exception catch (e) {
      _exceptionController.add(AuthException.fromException(e));
    }
  }

  Future<void> _logout(Emitter<AuthState> emit) async {
    try {
      await _authService.logout();
      unawaited(_userUpdates?.cancel());
      _userUpdates = null;
      emit(AuthInFlow.login());
    } on Exception catch (e) {
      _exceptionController.add(AuthException.fromException(e));
    }
  }
}
