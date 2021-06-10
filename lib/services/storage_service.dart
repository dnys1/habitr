import 'dart:convert';
import 'dart:io';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:habitr/models/AccessLevel.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/analytics_service.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/amplifyconfiguration.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

abstract class StorageService extends Repository<String> {
  Future<void> init();

  /// Holds any lost data due to a pending file upload being interrupted
  /// by the app shutting down.
  File? get lostFile;

  Future<void> putImage(User user, File image);
  Future<String> getImageUrl(String? identityId, String key);
  Future<void> precache(User user);
}

class AmplifyStorageService extends StorageService {
  static final _parsedConfig =
      jsonDecode(amplifyconfig) as Map<String, dynamic>;
  static final bucket =
      _parsedConfig['storage']['plugins']['awsS3StoragePlugin']['bucket'];
  static final region =
      _parsedConfig['storage']['plugins']['awsS3StoragePlugin']['region'];

  static final _imagePicker = ImagePicker();

  final AmplifyApiService _apiService;
  final AuthService _authService;
  final AnalyticsService _analyticsService;

  AmplifyStorageService(
    this._apiService,
    this._analyticsService,
    this._authService,
  );

  File? _lostFile;
  @override
  File? get lostFile => _lostFile;

  @override
  Future<void> init() async {
    // See discussion about Android crashes:
    // https://pub.dev/packages/image_picker
    if (Platform.isAndroid) {
      final LostData response = await _imagePicker.getLostData();
      if (!response.isEmpty && response.file != null) {
        _lostFile = File(response.file!.path);
      }
    }
  }

  @override
  Future<void> precache(User user) async {
    var avatar = user.avatar;
    if (avatar != null) {
      await getImageUrl(
        avatar.cognitoId ?? (await _authService.cognitoIdentityId)!,
        avatar.key,
      );
    }
  }

  @override
  Future<void> putImage(User user, File image) async {
    final key = const Uuid().v4();
    await Amplify.Storage.uploadFile(
      local: image,
      key: key,
      options: S3UploadFileOptions(
        accessLevel: StorageAccessLevel.protected,
      ),
    );
    await _apiService.updateUser(
      user,
      avatar: S3Object(
        bucket,
        region,
        key,
        accessLevel: AccessLevel.protected,
        cognitoId: await _authService.cognitoIdentityId,
      ),
    );
    _analyticsService.recordEvent('photoUpload');
  }

  @override
  Future<String> getImageUrl(String? identityId, String key) async {
    var url = get(key);
    if (url != null) {
      return url;
    }
    identityId ??= await _authService.cognitoIdentityId;
    final GetUrlResult result = await Amplify.Storage.getUrl(
      key: key,
      options: S3GetUrlOptions(
        targetIdentityId: identityId,
        accessLevel: StorageAccessLevel.protected,
      ),
    );
    return put(key, result.url);
  }
}
