import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum AuthScreen { signup, login, verify, addImage }

@immutable
class AuthData extends Equatable {
  const AuthData({
    this.username,
    this.password,
    this.provider,
  });

  final String? username;
  final String? password;
  final AuthProvider? provider;

  @override
  List<Object?> get props => [username, password, provider];
}

class AuthLoginData extends AuthData {
  const AuthLoginData(String username, String password)
      : super(username: username, password: password);

  AuthLoginData copyWith({
    String? username,
    String? password,
  }) =>
      AuthLoginData(
        username ?? this.username!,
        password ?? this.password!,
      );
}

class AuthLoginWithProviderData extends AuthData {
  const AuthLoginWithProviderData(AuthProvider provider)
      : super(provider: provider);
}

class AuthSignupData extends AuthData {
  const AuthSignupData(
    String username,
    String password, {
    required this.email,
  }) : super(username: username, password: password);

  final String email;

  @override
  List<Object?> get props => [username, password, email];

  AuthSignupData copyWith({
    String? username,
    String? password,
    String? email,
  }) =>
      AuthSignupData(
        username ?? this.username!,
        password ?? this.password!,
        email: email ?? this.email,
      );
}
