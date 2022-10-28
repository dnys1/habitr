import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/services.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:image_picker/image_picker.dart';

mixin ImagePickerMixin on BaseViewModel {
  static final _imagePicker = ImagePicker();

  bool _isLoadingImage = false;
  bool get isLoadingImage => _isLoadingImage;
  void _setIsLoadingImage(bool isLoadingImage) {
    _isLoadingImage = isLoadingImage;
    notifyListeners();
  }

  Uint8List? _imageBytes;
  Uint8List? get imageBytes => _imageBytes;
  void setImageBytes(Uint8List imageBytes) {
    _imageBytes = imageBytes;
    notifyListeners();
  }

  XFile? _image;
  XFile? get image => _image;
  void setImage(XFile image) {
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
        final imageBytes = await pickedImage.readAsBytes();
        setImageBytes(imageBytes);
        setImage(pickedImage);
      }
    } on PlatformException catch (e) {
      safePrint('Exception while selecting image: $e');
    } finally {
      _setIsLoadingImage(false);
    }
  }
}
