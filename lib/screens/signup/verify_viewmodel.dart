import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/util/base_viewmodel.dart';

class VerifyViewModel extends BaseViewModel {
  final AuthBloc _authBloc;

  VerifyViewModel(this._authBloc);

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
}
