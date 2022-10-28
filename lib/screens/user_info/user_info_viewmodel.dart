import 'package:amplify_flutter/amplify_flutter.dart' show safePrint;
import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/mixins/image_picker.dart';
import 'package:habitr/mixins/username_form.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/scaffold.dart';

class UserInfoViewModel extends BaseViewModel
    with ImagePickerMixin, UsernameFormMixin {
  UserInfoViewModel({
    required AuthBloc authBloc,
    required UserRepository userRepository,
    required StorageService storageService,
    required String username,
  })  : _authBloc = authBloc,
        _userRepository = userRepository,
        _storageService = storageService {
    _init(username);
  }

  final AuthBloc _authBloc;
  final UserRepository _userRepository;
  final StorageService _storageService;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  late final TextEditingController _nameController;
  TextEditingController get nameController => _nameController;

  late final TextEditingController _usernameController;
  TextEditingController get usernameController => _usernameController;

  late User _user;
  User get user => _user;

  bool _isEditing = false;
  bool get isEditing => _isEditing;

  bool _canEditProfile = false;
  bool get canEditProfile => _canEditProfile;

  void toggleEditMode() {
    _isEditing = !_isEditing;
    notifyListeners();
  }

  bool get _isDirty =>
      image != null ||
      (_usernameController.text != _user.username &&
          _usernameController.text != _user.displayUsername) ||
      _nameController.text != _user.name;

  void _clear() {
    clearImage();
    _usernameController.text = user.displayUsername ?? user.username;
    _nameController.text = _user.name ?? '';
  }

  void close() {
    _clear();
    toggleEditMode();
  }

  Future<void> _init(String username) async {
    setBusy(true);
    try {
      final user = await _loadUser(username);

      if (user == null) {
        return;
      }

      final authState = _authBloc.state as AuthLoggedIn;
      if (_user.username == authState.user.username) {
        _canEditProfile = true;
      }

      _usernameController = TextEditingController(
        text: user.displayUsername ?? user.username,
      );
      _nameController = TextEditingController(text: _user.name);
    } finally {
      setBusy(false);
    }
  }

  Future<void> save() async {
    if (!_isDirty) {
      toggleEditMode();
      return;
    }
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setBusy(true);
    try {
      S3Object? avatar;
      if (image != null) {
        avatar = await _storageService.putImage(_user, image!);
      }
      final name = _nameController.text;
      final displayUsername = _usernameController.text;
      final includeName = name != _user.name;
      final includeUsername = displayUsername != _user.username;
      final includeAvatar = avatar != null;
      if (includeName || includeUsername || includeAvatar) {
        await _userRepository.updateUser(
          name: includeName ? name : null,
          username: includeUsername ? displayUsername : null,
          avatar: includeAvatar ? avatar : null,
        );
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

  Future<User?> _loadUser(String username) async {
    try {
      final user = await _userRepository.getUser(username);
      if (user == null) {
        throw Exception('Could not load user');
      }

      _user = user;
      return _user;
    } on Exception catch (e) {
      setError(e);
      return null;
    }
  }
}
