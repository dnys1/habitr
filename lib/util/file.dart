import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cross_file/cross_file.dart';

extension AWSFileConverter on XFile {
  Future<AWSFile> toAwsFile({String? contentType}) async {
    return AWSFile.fromStream(
      Stream.fromFuture(readAsBytes()),
      size: await length(),
      contentType: contentType,
    );
  }
}
