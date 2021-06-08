import 'dart:io';

import 'package:flutter/services.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:image_picker/image_picker.dart';

class UserAvatarViewModel extends BaseViewModel {
  static final _imagePicker = ImagePicker();

  final AuthService _authService;
  final UserRepository _userRepository;
  final StorageService _storageService;

  late final User user;

  UserAvatarViewModel({
    required StorageService storageService,
    required UserRepository userRepository,
    required AuthService authService,
    User? user,
    String? username,
  })  : _storageService = storageService,
        _userRepository = userRepository,
        _authService = authService {
    _init(user: user, username: username);
  }

  String? _url;
  String? get url => _url;

  bool _canEditPhoto = false;
  bool get canEditPhoto => _canEditPhoto;

  Future<void> _init({
    User? user,
    String? username,
  }) async {
    setBusy(true);
    try {
      user ??= await _userRepository.getUser(username!);
      if (user == null) {
        throw Exception('User not found');
      }
      this.user = user;
      if (this.user.username == await _authService.username) {
        _canEditPhoto = true;
      }
      var avatar = this.user.avatar;
      if (avatar != null) {
        _url = await _storageService.getImageUrl(avatar.cognitoId, avatar.key);
      }
    } on Exception catch (e) {
      safePrint('Error initializing view model: $e');
    } finally {
      setBusy(false);
    }
  }

  Future<String?> avatarUrl(StorageService storageService) async {
    if (user.avatar == null) {
      return null;
    }
    return storageService.getImageUrl(
      user.avatar!.cognitoId!,
      user.avatar!.key,
    );
  }

  File? _image;
  File? get image => _image;

  Future<File?> pickImage() async {
    setBusy(true);
    try {
      final pickedImage = await _imagePicker.getImage(
        source: ImageSource.gallery,
        imageQuality: 25,
      );

      if (pickedImage != null) {
        _image = File(pickedImage.path);
        return _image;
      }
    } on PlatformException catch (e) {
      safePrint('Exception while selecting image: $e');
    } finally {
      setBusy(false);
    }
    return null;
  }
}
