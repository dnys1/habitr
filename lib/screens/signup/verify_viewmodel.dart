import 'package:amplify_flutter/amplify_flutter.dart' show safePrint;
import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/scaffold.dart';

class VerifyViewModel extends BaseViewModel {
  VerifyViewModel({
    required AuthBloc authBloc,
    required AuthService authService,
  })  : _authBloc = authBloc,
        _authService = authService;

  final AuthBloc _authBloc;
  final AuthService _authService;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  String _code = '';
  String get code => _code;
  void setCode(String code) {
    _code = code;
    notifyListeners();
  }

  Future<void> verify() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    _authBloc.add(AuthVerify(_code));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> resendCode() async {
    final username = (_authBloc.state as AuthInFlow).username!;
    try {
      await _authService.resendVerificationCode(username);
      showSuccessSnackbar('Code has been sent.');
    } on Exception catch (e) {
      safePrint('Error sending code: $e');
      showErrorSnackbar('Code could not be sent. Please try again.');
    }
  }

  void logout() {
    _authBloc.add(const AuthLogout());
  }
}
