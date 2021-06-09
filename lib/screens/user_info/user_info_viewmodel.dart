import 'dart:io';

import 'package:habitr/mixins/image_picker.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';

class UserInfoViewModel extends BaseViewModel with ImagePickerMixin {
  final ApiService _apiService;
  final AuthService _authService;
  final StorageService _storageService;

  late User _user;
  User get user => _user;
  void _setUser(User user) {
    _user = user;
    notifyListeners();
  }

  UserInfoViewModel({
    required ApiService apiService,
    required AuthService authService,
    required StorageService storageService,
    String? username,
    User? user,
  })  : _apiService = apiService,
        _authService = authService,
        _storageService = storageService {
    assert(
      username != null || user != null,
      'Either username or user must be provided.',
    );
    _init(user: user, username: username);
  }

  Future<void> _init({User? user, String? username}) async {
    if (user != null) {
      _user = user;
    } else {
      await _loadUser(username!);
    }

    if (_user.username == await _authService.username) {
      _canEditProfile = true;
      notifyListeners();
    }
  }

  bool _isEditing = false;
  bool get isEditing => _isEditing;

  bool _canEditProfile = false;
  bool get canEditProfile => _canEditProfile;

  void toggleEditMode() {
    _isEditing = !_isEditing;
    notifyListeners();
  }

  bool get _isDirty => image != null;

  void _clear() {
    clearImage();
  }

  void close() {
    _clear();
    toggleEditMode();
  }

  Future<void> save() async {
    if (!_isDirty) {
      toggleEditMode();
      return;
    }
    setBusy(true);
    try {
      if (image != null) {
        await _storageService.putImage(_user, image!);
      }
      _isEditing = false;
      _clear();

      showSuccessSnackbar('Profile successfully updated.');
    } on Exception catch (e) {
      safePrint('Error saving info: $e');
      showErrorSnackbar('Error saving profile. Please try again.');
    } finally {
      setBusy(false);
    }
  }

  Future<void> _loadUser(String username) async {
    setBusy(true);
    try {
      final user = await _apiService.getUser(username);
      if (user != null) {
        _setUser(user);
      } else {
        setError('Could not load user');
      }
    } on Exception catch (e) {
      setError(e);
    } finally {
      setBusy(false);
    }
  }
}
