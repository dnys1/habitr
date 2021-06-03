import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/util/base_viewmodel.dart';

class SignupViewModel extends BaseViewModel {
  final AuthBloc _authBloc;

  SignupViewModel(this._authBloc);

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  String _username = '';
  String get username => _username;
  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }

  String _email = '';
  String get email => _email;
  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;
  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<void> signUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final signUpData = AuthSignupData(
      _username.trim(),
      _password.trim(),
      email: _email.trim(),
    );
    _authBloc.add(AuthSignUp(signUpData));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  void goToLogin() {
    _authBloc.add(const AuthChangeScreen(AuthScreen.login));
  }
}
