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

/// This is an auto generated class representing the Comment type in your schema.
@immutable
class Comment extends Model {
  static const classType = _CommentModelType();
  final String id;
  final String habitId;
  final Habit? habit;
  final User? by;
  final String owner;
  final String comment;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Comment._internal({
    required this.id,
    required this.habitId,
    required this.habit,
    required this.by,
    required this.owner,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Comment({
    required String id,
    required String habitId,
    required Habit? habit,
    required User? by,
    required String owner,
    required String comment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) {
    return Comment._internal(
      id: id,
      habitId: habitId,
      habit: habit,
      by: by,
      owner: owner,
      comment: comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        habitId == other.habitId &&
        habit == other.habit &&
        by == other.by &&
        owner == other.owner &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("habitId=" + "$habitId" + ", ");
    buffer.write("by=" + (by != null ? by.toString() : "null") + ", ");
    buffer.write("comment=" + "$comment");
    buffer.write("}");

    return buffer.toString();
  }

  Comment copyWith({String? id, String? habitId, User? by, String? comment}) {
    return Comment(
      id: id ?? this.id,
      habitId: habitId ?? this.habitId,
      habit: habit,
      by: by ?? this.by,
      owner: owner,
      comment: comment ?? this.comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory Comment.fromJson(Map<String, dynamic> json) {
    var id = json['id'];
    var habitId = json['habitId'];
    var habit = json['habit'] == null ? null : Habit.fromJson(json['habit']);
    var by = json['by'] == null && json['by']?['serializedData'] == null
        ? null
        : User.fromJson(Map<String, dynamic>.from(
            json['by']?['serializedData'] ?? json['by']));
    var owner = json['owner'] as String;
    var comment = json['comment'];
    var createdAt = DateTime.parse(json['createdAt'] as String);
    var updatedAt = DateTime.parse(json['updatedAt'] as String);
    return Comment(
      id: id,
      habitId: habitId,
      habit: habit,
      owner: owner,
      by: by,
      comment: comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'habitId': habitId,
        if (habit != null) 'habit': habit!.toJson(),
        if (by != null) 'by': by!.toJson(),
        'owner': owner,
        'comment': comment,
      };

  static final QueryField ID = QueryField(fieldName: "comment.id");
  static final QueryField HABITID = QueryField(fieldName: "habitId");
  static final QueryField BY = QueryField(
      fieldName: "by",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final QueryField COMMENT = QueryField(fieldName: "comment");
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

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Comment.HABITID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Comment.BY,
        isRequired: false,
        targetName: "owner",
        ofModelName: 'User'));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Comment.COMMENT,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();

  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }

  @override
  String modelName() => 'Comment';
}
