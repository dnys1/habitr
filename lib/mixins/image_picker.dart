import 'dart:io';

import 'package:flutter/services.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:image_picker/image_picker.dart';

mixin ImagePickerMixin on BaseViewModel {
  static final _imagePicker = ImagePicker();

  bool _isLoadingImage = false;
  bool get isLoadingImage => _isLoadingImage;
  void _setIsLoadingImage(bool isLoadingImage) {
    _isLoadingImage = isLoadingImage;
    notifyListeners();
  }

  File? _image;
  File? get image => _image;
  void setImage(File image) {
    _image = image;
    notifyListeners();
  }

  void clearImage() {
    _image = null;
    notifyListeners();
  }

  Future<void> pickImage() async {
    _setIsLoadingImage(true);
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 25,
      );

      if (pickedImage != null) {
        setImage(File(pickedImage.path));
      }
    } on PlatformException catch (e) {
      safePrint('Exception while selecting image: $e');
    } finally {
      _setIsLoadingImage(false);
    }
  }
}
