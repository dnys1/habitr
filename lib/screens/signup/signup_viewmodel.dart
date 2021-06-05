import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/validators.dart' as util;
import 'package:stream_transform/stream_transform.dart';

class SignupViewModel extends BaseViewModel {
  final AuthBloc _authBloc;
  final ApiService _apiService;

  SignupViewModel(this._authBloc, this._apiService) {
    _usernameExistsController.stream
        .debounce(const Duration(milliseconds: 400))
        .listen((username) {
      _usernameExistsFuture = _getUsernameExists(username);
    });
  }

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  String _username = '';
  String get username => _username;
  void setUsername(String username) {
    _username = username;
    _usernameExistsController.add(username);
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

  final _usernameExistsController = StreamController<String>();

  bool _usernameExistsLoading = false;
  bool get usernameExistsLoading => _usernameExistsLoading;
  void _setUsernameExistsLoading(bool loading) {
    _usernameExistsLoading = loading;
    if (hasListeners) {
      notifyListeners();
    }
  }

  bool _usernameExists = false;
  bool get usernameExists => _usernameExists;
  void _setUsernameExists(bool exists) {
    _usernameExists = exists;
    if (hasListeners) {
      notifyListeners();
    }
  }

  Future<void>? _usernameExistsFuture;

  String? validateUsername(String? username) {
    if (_usernameExists) {
      return 'Username already exists';
    }
    return util.validateUsername(username);
  }

  Future<void> _getUsernameExists(String username) async {
    if (username.isEmpty) return;
    _setUsernameExistsLoading(true);
    try {
      final exists = await _apiService.usernameExists(username);
      _setUsernameExists(exists);
    } on Exception catch (e) {
      safePrint('Error checking if username exists: $e');
      _setUsernameExists(true);
    } finally {
      _setUsernameExistsLoading(false);
    }
  }

  Future<void> signUp() async {
    if (_usernameExistsFuture != null) {
      await _usernameExistsFuture!;
    }
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
