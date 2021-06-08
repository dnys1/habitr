import 'dart:io';

import 'package:flutter/services.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:image_picker/image_picker.dart';

class AddImageViewModel extends BaseViewModel {
  static final _imagePicker = ImagePicker();

  final AuthBloc _authBloc;
  final AuthService _authService;
  final ApiService _apiService;
  final StorageService _storageService;

  AddImageViewModel({
    required AuthBloc authBloc,
    required AuthService authService,
    required ApiService apiService,
    required StorageService storageService,
  })  : _authBloc = authBloc,
        _authService = authService,
        _apiService = apiService,
        _storageService = storageService;

  bool get isDirty => (_name != null && _name!.isNotEmpty) || _image != null;

  String? _name;
  String? get name => _name;
  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  File? _image;
  void setImage(File image) {
    _image = image;
  }

  Future<void> save() async {
    setBusy(true);
    try {
      var user = (await _authService.currentUser)!;

      if (_image != null) {
        await _storageService.putImage(user, _image!);
        user = user.copyWith(version: (user.version ?? 0) + 1);
      }
      if (_name != null && _name!.isNotEmpty) {
        await (_apiService as AmplifyApiService).updateUser(user, name: _name);
      }

      user = (await _authService.currentUser)!;
      _authBloc.add(AuthCompleteSignUp(user));
    } on Exception catch (e) {
      safePrint('Error updating user: $e');
      setError('Could not update user. Please try again.');
    } finally {
      setBusy(false);
    }
  }

  // @override
  // void setError(Object error) {
  //   final snackBar = SnackBar(
  //     content: Text(
  //       error.toString(),
  //     ),
  //   );
  //   _scaffoldMessenger.showSnackBar(snackBar);
  // }
}
