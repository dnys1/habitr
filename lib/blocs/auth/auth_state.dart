part of 'auth_bloc.dart';

@immutable
abstract class AuthState with EquatableMixin {
  const AuthState();

  @override
  List<Object?> get props => [];

  Map<String, dynamic> toJson() => <String, dynamic>{};

  @override
  String toString() {
    return '$runtimeType{}';
  }
}

/// Dummy initial state for the bloc.
class AuthInitial extends AuthState {
  const AuthInitial();
}

/// The bloc is loading state from disk.
class AuthLoading extends AuthState {
  const AuthLoading();
}

/// The bloc is idle at a certain [screen].
@JsonSerializable()
class AuthInFlow extends AuthState {
  final AuthScreen screen;
  final User? user;
  final String? username;

  const AuthInFlow(this.screen, {this.username, this.user});

  factory AuthInFlow.login() => const AuthInFlow(AuthScreen.login);
  factory AuthInFlow.signUp() => const AuthInFlow(AuthScreen.signup);
  factory AuthInFlow.verify(String username) => AuthInFlow(
        AuthScreen.verify,
        username: username,
      );
  factory AuthInFlow.addImage(User user) => AuthInFlow(
        AuthScreen.addImage,
        user: user,
      );

  @override
  List<Object?> get props => [screen, user, username];

  @override
  Map<String, dynamic> toJson() => _$AuthInFlowToJson(this);

  factory AuthInFlow.fromJson(Map<String, dynamic> json) =>
      _$AuthInFlowFromJson(json);

  @override
  String toString() {
    return 'AuthInFlow{ screen: "$screen", username: "$username", user: "$user" }';
  }
}

/// The bloc is idle with an authenticated [user].
class AuthLoggedIn extends AuthState {
  final User user;

  const AuthLoggedIn(this.user);

  @override
  List<Object?> get props => [user];

  @override
  String toString() {
    return 'AuthLoggedIn{ user: "$user" }';
  }
}
