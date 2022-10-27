import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/mixins/image_picker.dart';
import 'package:habitr/mixins/username_form.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';

class AddImageViewModel extends BaseViewModel
    with ImagePickerMixin, UsernameFormMixin {
  AddImageViewModel({
    required AuthBloc authBloc,
    required AuthService authService,
    required ApiService apiService,
    required StorageService storageService,
  })  : _authBloc = authBloc,
        _authService = authService,
        _apiService = apiService,
        _storageService = storageService;

  final AuthBloc _authBloc;
  final AuthService _authService;
  final ApiService _apiService;
  final StorageService _storageService;

  User get user {
    final state = _authBloc.state;
    if (state is AuthLoggedIn) {
      return state.user;
    } else {
      return (state as AuthInFlow).user!;
    }
  }

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  bool get isDirty => (_name != null && _name!.isNotEmpty) || image != null;

  String? _name;
  String? get name => _name;
  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  Future<void> save() async {
    if (usernameExistsFuture != null) {
      await usernameExistsFuture;
    }
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    try {
      var user = (await _authService.currentUser)!;

      S3Object? avatar;
      if (image != null) {
        avatar = await _storageService.putImage(user, image!);
      }
      await _apiService.updateUser(
        user,
        name: _name,
        username: username,
        avatar: avatar,
      );

      user = (await _authService.currentUser)!;
      _authBloc.add(AuthCompleteSignUp(user));
    } on Exception catch (e) {
      safePrint('Error updating user: $e');
      showErrorSnackbar('Could not update user. Please try again.');
    } finally {
      setBusy(false);
    }
  }
}
