import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/util/base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final AuthBloc _authBloc;

  LoginViewModel(this._authBloc);

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  String _username = '';
  String get username => _username;
  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;
  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<void> login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final loginData = AuthLoginData(
      _username.trim(),
      _password.trim(),
    );
    _authBloc.add(AuthLogin(loginData));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  void goToSignUp() {
    _authBloc.add(const AuthChangeScreen(AuthScreen.signup));
  }
}
