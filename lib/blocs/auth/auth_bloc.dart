import 'dart:async';

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
import 'package:habitr/util/error.dart';
import 'package:habitr/util/print.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final BackendService _backendService;
  final DataService _dataService;

  AuthBloc(
    this._authService,
    this._backendService,
    this._dataService,
  ) : super(const AuthInitial());

  @override
  Future<void> close() async {
    await _userUpdates?.cancel();
    return super.close();
  }

  final _exceptionController = StreamController<AuthException>.broadcast();
  Stream<AuthException> get exceptions => _exceptionController.stream;

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

  // Cache login data to improve sign up/verify code flow.
  AuthData? _authData;

  Stream<AuthState> _loadInitialState() async* {
    yield const AuthLoading();
    try {
      await _backendService.configure();
    } on Exception catch (e) {
      safePrint('Error configuring backend: $e');
    }
    try {
      final currentUser = await _authService.currentUser;
      if (currentUser != null) {
        yield AuthLoggedIn(currentUser);
        _userUpdates ??= _userEvents.listen(add);
      } else {
        yield AuthInFlow.login();
      }
    } on Exception catch (e, st) {
      safePrint('Exception occurred getting user: $e');
      yield AuthInFlow.login();
    }
  }

  StreamSubscription<AuthEvent>? _userUpdates;
  Stream<AuthEvent> get _userEvents async* {
    try {
      await for (var user in _authService.userUpdates) {
        yield AuthUserUpdate(user);
      }
    } on Exception {
      yield const AuthLogout();
    }
  }

  Stream<AuthState> _login(AuthLoginData loginData) async* {
    try {
      _authData = loginData;
      final user = await _authService.login(
        loginData.username,
        loginData.password,
      );
      yield AuthLoggedIn(user);
      _userUpdates ??= _userEvents.listen(add);
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _signup(AuthSignupData signupData) async* {
    try {
      _authData = signupData;
      await _authService.signUp(
        signupData.username,
        signupData.password,
        signupData.email,
      );
      yield AuthInFlow.verify(signupData.username);
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
      if (_authData != null) {
        final user = await _authService.login(
          _authData!.username,
          _authData!.password,
        );
        yield AuthInFlow.addImage(user);
      } else {
        yield AuthInFlow.login();
      }
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _logout() async* {
    try {
      await _userUpdates?.cancel();
      _userUpdates = null;
      await _authService.logout();
      yield AuthInFlow.login();
    } on Exception catch (e, st) {
      _exceptionController.add(AuthException(e.toString()));
    }
  }
}
