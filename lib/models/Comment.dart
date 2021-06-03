/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Comment type in your schema. */
@immutable
class Comment extends Model {
  static const classType = const _CommentModelType();
  @override
  final String id;
  final User? by;
  final Habit? habit;
  final String? comment;
  final String? habitCommentsId;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Comment._internal(
      {required this.id,
      required this.by,
      required this.habit,
      required this.comment,
      this.habitCommentsId})
      : super(id: id);

  factory Comment(
      {String? id,
      required User? by,
      required Habit? habit,
      required String? comment,
      String? habitCommentsId}) {
    return Comment._internal(
        id: id ?? UUID.getUUID(),
        by: by,
        habit: habit,
        comment: comment,
        habitCommentsId: habitCommentsId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        by == other.by &&
        habit == other.habit &&
        comment == other.comment &&
        habitCommentsId == other.habitCommentsId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("by=" + (by != null ? by.toString() : "null") + ", ");
    buffer.write("habit=" + (habit != null ? habit.toString() : "null") + ", ");
    buffer.write("comment=" + "$comment" + ", ");
    buffer.write("habitCommentsId=" + "$habitCommentsId");
    buffer.write("}");

    return buffer.toString();
  }

  Comment copyWith(
      {String? id,
      User? by,
      Habit? habit,
      String? comment,
      String? habitCommentsId}) {
    return Comment(
        id: id ?? this.id,
        by: by ?? this.by,
        habit: habit ?? this.habit,
        comment: comment ?? this.comment,
        habitCommentsId: habitCommentsId ?? this.habitCommentsId);
  }

  Comment.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        by = json['by'] != null
            ? User.fromJson(new Map<String, dynamic>.from(json['by']))
            : null,
        habit = json['habit'] != null
            ? Habit.fromJson(new Map<String, dynamic>.from(json['habit']))
            : null,
        comment = json['comment'],
        habitCommentsId = json['habitCommentsId'],
        super(id: json['id']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'by': by?.toJson(),
        'habit': habit?.toJson(),
        'comment': comment,
        'habitCommentsId': habitCommentsId
      };

  static final QueryField ID = QueryField(fieldName: "comment.id");
  static final QueryField BY = QueryField(
      fieldName: "by",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (User).toString()));
  static final QueryField HABIT = QueryField(
      fieldName: "habit",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Habit).toString()));
  static final QueryField COMMENT = QueryField(fieldName: "comment");
  static final QueryField HABITCOMMENTSID =
      QueryField(fieldName: "habitCommentsId");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.GROUPS,
          groupClaim: "cognito:groups",
          groups: [
            "admin"
          ],
          operations: [
            ModelOperation.CREATE,
            ModelOperation.UPDATE,
            ModelOperation.DELETE,
            ModelOperation.READ
          ]),
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ]),
      AuthRule(
          authStrategy: AuthStrategy.PRIVATE,
          operations: [ModelOperation.READ]),
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "owner",
          identityClaim: "cognito:username",
          operations: [
            ModelOperation.CREATE,
            ModelOperation.DELETE,
            ModelOperation.UPDATE
          ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Comment.BY,
        isRequired: true,
        targetName: "owner",
        ofModelName: (User).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Comment.HABIT,
        isRequired: true,
        targetName: "commentHabitId",
        ofModelName: (Habit).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Comment.COMMENT,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Comment.HABITCOMMENTSID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();

  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
}
