import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

import 'package:habitr/amplifyconfiguration.dart';

abstract class BackendService {
  Future<void> configure();
}

class AmplifyBackendService implements BackendService {
  @override
  Future<void> configure() async {
    if (Amplify.isConfigured) {
      return;
    }

    try {
      await Amplify.addPlugins([
        AmplifyAPI(),
        AmplifyAuthCognito(),
        AmplifyStorageS3(),
        // AmplifyDataStore(modelProvider: ModelProvider.instance),
      ]);
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      // TODO: Remove when configure is fixed
    }
  }
}
