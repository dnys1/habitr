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

class AuthLoad extends AuthEvent {
  const AuthLoad();
}

class AuthChangeScreen extends AuthEvent {
  final AuthScreen screen;

  const AuthChangeScreen(this.screen);

  @override
  List<Object?> get props => [screen];

  @override
  String toString() {
    return 'AuthChangeScreen{ screen: "$screen" }';
  }
}

class AuthLogin extends AuthEvent {
  final AuthLoginData data;

  const AuthLogin(this.data);

  @override
  List<Object?> get props => [data];
}

class AuthLoginWithProvider extends AuthEvent {
  final AuthProvider provider;

  const AuthLoginWithProvider(this.provider);

  @override
  List<Object?> get props => [provider];

  @override
  String toString() {
    return 'AuthLoginWithProvider{ provider: "$provider" }';
  }
}

class AuthSignUp extends AuthEvent {
  final AuthSignupData data;

  const AuthSignUp(this.data);

  @override
  List<Object?> get props => [data];
}

class AuthVerify extends AuthEvent {
  final String code;

  const AuthVerify(this.code);

  @override
  List<Object?> get props => [code];

  @override
  String toString() {
    return 'AuthVerify{ code: "$code" }';
  }
}

class AuthCompleteSignUp extends AuthEvent {
  final User user;

  const AuthCompleteSignUp(this.user);

  @override
  List<Object?> get props => [user];
}

class AuthUserUpdate extends AuthEvent {
  final User user;

  const AuthUserUpdate(this.user);

  @override
  List<Object?> get props => [user];
}

class AuthFailure extends AuthEvent {
  final Object? error;
  final StackTrace? stackTrace;

  const AuthFailure([this.error, this.stackTrace]);

  @override
  List<Object?> get props => [error, stackTrace];

  @override
  String toString() => buildErrorMessage(error, stackTrace);
}

class AuthLogout extends AuthEvent {
  const AuthLogout();
}
