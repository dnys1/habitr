/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_core/amplify_core.dart';
import 'Comment.dart';
import 'Habit.dart';
import 'User.dart';
import 'S3Object.dart';
import 'VoteResult.dart';

export 'AccessLevel.dart';
export 'Category.dart';
export 'Comment.dart';
export 'Habit.dart';
export 'S3Object.dart';
export 'User.dart';
export 'VoteResult.dart';
export 'VoteType.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "fdb708b98dc8be002e87f20936ce4ad1";
  @override
  List<ModelSchema> modelSchemas = [Comment.schema, Habit.schema, User.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [S3Object.schema, VoteResult.schema];

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "Comment":
        return Comment.classType;
      case "Habit":
        return Habit.classType;
      case "User":
        return User.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}
