import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:habitr/amplifyconfiguration.dart';
import 'package:habitr/models/AccessLevel.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/analytics_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/util/file.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

abstract class StorageService extends Repository<String> {
  Future<void> init();

  /// Holds any lost data due to a pending file upload being interrupted
  /// by the app shutting down.
  XFile? get lostFile;

  Future<S3Object> putImage(User user, XFile image);
  Future<String> getImageUrl(String? identityId, String key);
  Future<void> precache(User user);
}

class AmplifyStorageService extends StorageService {
  AmplifyStorageService(
    this._analyticsService,
    this._authService,
  );

  static final _parsedConfig = AmplifyConfig.fromJson(
    jsonDecode(amplifyconfig) as Map<String, dynamic>,
  );
  static final bucket = _parsedConfig.storage!.awsPlugin!.bucket;
  static final region = _parsedConfig.storage!.awsPlugin!.region;

  static final _imagePicker = ImagePicker();

  final AuthService _authService;
  final AnalyticsService _analyticsService;

  XFile? _lostFile;
  @override
  XFile? get lostFile => _lostFile;

  @override
  Future<void> init() async {
    // See discussion about Android crashes:
    // https://pub.dev/packages/image_picker
    if (!zIsWeb && Platform.isAndroid) {
      final response = await _imagePicker.retrieveLostData();
      if (!response.isEmpty && response.file != null) {
        _lostFile = response.file;
      }
    }
  }

  @override
  Future<void> precache(User user) async {
    final avatar = user.avatar;
    if (avatar != null) {
      await getImageUrl(
        avatar.cognitoId ?? await _authService.cognitoIdentityId,
        avatar.key,
      );
    }
  }

  @override
  Future<S3Object> putImage(User user, XFile image) async {
    final key = const Uuid().v4();
    await Amplify.Storage.uploadFile(
      localFile: await image.toAwsFile(
        contentType: image.mimeType,
      ),
      key: key,
      options: const S3UploadFileOptions(
        accessLevel: StorageAccessLevel.protected,
      ),
    ).result;
    unawaited(_analyticsService.recordEvent('photoUpload'));
    final newUrl = await getImageUrl(null, key);
    put(key, newUrl);
    return S3Object(
      bucket: bucket,
      region: region,
      key: key,
      accessLevel: AccessLevel.protected,
      cognitoId: await _authService.cognitoIdentityId,
    );
  }

  @override
  Future<String> getImageUrl(String? identityId, String key) async {
    final url = get(key);
    if (url != null) {
      return url;
    }
    identityId ??= await _authService.cognitoIdentityId;
    final result = await Amplify.Storage.getUrl(
      key: key,
      options: S3GetUrlOptions.forIdentity(identityId),
    ).result;
    return put(key, result.url.toString());
  }
}
