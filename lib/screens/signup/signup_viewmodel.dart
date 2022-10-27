import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/mixins/username_form.dart';
import 'package:habitr/util/base_viewmodel.dart';

class SignupViewModel extends BaseViewModel with UsernameFormMixin {
  SignupViewModel(this._authBloc);

  final AuthBloc _authBloc;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  String _email = '';
  String get email => _email.trim();
  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  String _password = '';
  String get password => _password.trim();
  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<void> signUp() async {
    if (usernameExistsFuture != null) {
      await usernameExistsFuture!;
    }
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    final signUpData = AuthSignupData(
      username!,
      password,
      email: email,
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
