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

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the VoteResult type in your schema.
@immutable
class VoteResult {
  final Habit? _habit;
  final User? _user;

  Habit? get habit {
    return _habit;
  }

  User? get user {
    return _user;
  }

  const VoteResult._internal({habit, user})
      : _habit = habit,
        _user = user;

  factory VoteResult({Habit? habit, User? user}) {
    return VoteResult._internal(habit: habit, user: user);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VoteResult &&
        _habit == other._habit &&
        _user == other._user;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("VoteResult {");
    buffer.write(
        "habit=" + (_habit != null ? _habit!.toString() : "null") + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  VoteResult copyWith({Habit? habit, User? user}) {
    return VoteResult._internal(
        habit: habit ?? this.habit, user: user ?? this.user);
  }

  VoteResult.fromJson(Map<String, dynamic> json)
      : _habit = json['habit']?['serializedData'] != null
            ? Habit.fromJson(
                Map<String, dynamic>.from(json['habit']['serializedData']))
            : null,
        _user = json['user']?['serializedData'] != null
            ? User.fromJson(
                Map<String, dynamic>.from(json['user']['serializedData']))
            : null;

  Map<String, dynamic> toJson() =>
      {'habit': _habit?.toJson(), 'user': _user?.toJson()};

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "VoteResult";
    modelSchemaDefinition.pluralName = "VoteResults";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'habit',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'user',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}
