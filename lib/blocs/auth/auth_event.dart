part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent with EquatableMixin {
  const AuthEvent();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    return '$runtimeType{}';
  }
}

/// Triggers a loading of state from disk.
class AuthLoad extends AuthEvent {
  const AuthLoad();
}

/// Triggers a change in the auth screen being shown.
class AuthChangeScreen extends AuthEvent {
  const AuthChangeScreen(this.screen);

  final AuthScreen screen;

  @override
  List<Object?> get props => [screen];

  @override
  String toString() {
    return 'AuthChangeScreen{ screen: "$screen" }';
  }
}

/// Triggers a login (username/password).
class AuthLogin extends AuthEvent {
  const AuthLogin(this.data);

  final AuthData data;

  @override
  List<Object?> get props => [data];
}

/// Triggers a login (social provider).
class AuthLoginWithProvider extends AuthEvent {
  const AuthLoginWithProvider(this.provider);

  final AuthProvider provider;

  @override
  List<Object?> get props => [provider];

  @override
  String toString() {
    return 'AuthLoginWithProvider{ provider: "$provider" }';
  }
}

/// Triggers a sign up (username/password).
class AuthSignUp extends AuthEvent {
  const AuthSignUp(this.data);

  final AuthSignupData data;

  @override
  List<Object?> get props => [data];
}

/// Triggers an account confirmation (w/ verification code).
class AuthVerify extends AuthEvent {
  const AuthVerify(this.code);

  final String code;

  @override
  List<Object?> get props => [code];

  @override
  String toString() {
    return 'AuthVerify{ code: "$code" }';
  }
}

/// Triggers a login but post-signup.
class AuthCompleteSignUp extends AuthEvent {
  const AuthCompleteSignUp(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

/// Triggers a post-authentication user update, i.e. when the user is logged in
/// and their data changes on the server.
class AuthUserUpdate extends AuthEvent {
  const AuthUserUpdate(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

/// Triggers a failure in the auth flow.
class AuthFailure extends AuthEvent {
  const AuthFailure([this.error, this.stackTrace]);

  final Object? error;
  final StackTrace? stackTrace;

  @override
  List<Object?> get props => [error, stackTrace];

  @override
  String toString() => buildErrorMessage(error, stackTrace);
}

/// Triggers a logout.
class AuthLogout extends AuthEvent {
  const AuthLogout();
}
