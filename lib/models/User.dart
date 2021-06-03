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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'S3Object.dart';

/** This is an auto generated class representing the User type in your schema. */
@immutable
class User extends Model {
  static const classType = const _UserModelType();
  final String id;
  final String username;
  final String? name;
  final S3Object? avatar;
  final List<Comment>? comments;
  final List<Habit>? habits;
  final List<String>? upvotedHabits;
  final List<String>? downvotedHabits;
  final int? version;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const User._internal(
      {required this.id,
      required this.username,
      this.name,
      this.avatar,
      this.comments,
      this.habits,
      this.upvotedHabits,
      this.downvotedHabits,
      this.version})
      : super(id: id);

  factory User(
      {String? id,
      required String username,
      String? name,
      S3Object? avatar,
      List<Comment>? comments,
      List<Habit>? habits,
      List<String>? upvotedHabits,
      List<String>? downvotedHabits,
      int? version}) {
    return User._internal(
        id: id == null ? UUID.getUUID() : id,
        username: username,
        name: name,
        avatar: avatar,
        comments: comments != null ? List.unmodifiable(comments) : comments,
        habits: habits != null ? List.unmodifiable(habits) : habits,
        upvotedHabits: upvotedHabits != null
            ? List.unmodifiable(upvotedHabits)
            : upvotedHabits,
        downvotedHabits: downvotedHabits != null
            ? List.unmodifiable(downvotedHabits)
            : downvotedHabits,
        version: version);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        username == other.username &&
        name == other.name &&
        avatar == other.avatar &&
        DeepCollectionEquality().equals(comments, other.comments) &&
        DeepCollectionEquality().equals(habits, other.habits) &&
        DeepCollectionEquality().equals(upvotedHabits, other.upvotedHabits) &&
        DeepCollectionEquality()
            .equals(downvotedHabits, other.downvotedHabits) &&
        version == other.version;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$username" + ", ");
    buffer.write("name=" + "$name" + ", ");
    buffer.write(
        "avatar=" + (avatar != null ? avatar.toString() : "null") + ", ");
    buffer.write("upvotedHabits=" +
        (upvotedHabits != null ? upvotedHabits.toString() : "null") +
        ", ");
    buffer.write("downvotedHabits=" +
        (downvotedHabits != null ? downvotedHabits.toString() : "null") +
        ', ');
    buffer.write('version=$version');
    buffer.write("}");

    return buffer.toString();
  }

  User copyWith(
      {String? id,
      String? username,
      String? name,
      S3Object? avatar,
      List<Comment>? comments,
      List<Habit>? habits,
      List<String>? upvotedHabits,
      List<String>? downvotedHabits,
      int? version}) {
    return User(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
        comments: comments ?? this.comments,
        habits: habits ?? this.habits,
        upvotedHabits: upvotedHabits ?? this.upvotedHabits,
        downvotedHabits: downvotedHabits ?? this.downvotedHabits,
        version: version ?? this.version);
  }

  factory User.fromJson(Map<String, dynamic> json) {
    var id = json['id'];
    var username = json['username'];
    var name = json['name'];
    var avatar = json['avatar'] is Map
        ? S3Object.fromJson(json['avatar'] as Map<String, dynamic>)
        : null;
    var comments = json['comments']?['items'] is List
        ? (json['comments']['items'] as List)
            .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e)))
            .toList()
        : null;
    var habits = json['habits']?['items'] is List
        ? (json['habits']['items'] as List)
            .map((e) => Habit.fromJson(new Map<String, dynamic>.from(e)))
            .toList()
        : null;
    var upvotedHabits = json['upvotedHabits']?.cast<String>();
    var downvotedHabits = json['downvotedHabits']?.cast<String>();
    var version = json['_version'] as int?;
    return User(
      username: username,
      id: id,
      name: name,
      avatar: avatar,
      comments: comments,
      habits: habits,
      upvotedHabits: upvotedHabits,
      downvotedHabits: downvotedHabits,
      version: version,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'name': name,
        'avatar': avatar,
        'comments': comments?.map((e) => e.toJson()).toList(),
        'habits': habits?.map((e) => e.toJson()).toList(),
        'upvotedHabits': upvotedHabits,
        'downvotedHabits': downvotedHabits,
        '_version': version,
      };

  static final QueryField ID = QueryField(fieldName: "user.id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField AVATAR = QueryField(fieldName: "avatar");
  static final QueryField COMMENTS = QueryField(
      fieldName: "comments",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Comment).toString()));
  static final QueryField HABITS = QueryField(
      fieldName: "habits",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Habit).toString()));
  static final QueryField UPVOTEDHABITS =
      QueryField(fieldName: "upvotedHabits");
  static final QueryField DOWNVOTEDHABITS =
      QueryField(fieldName: "downvotedHabits");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";

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
          ownerField: "username",
          identityClaim: "cognito:username",
          operations: [ModelOperation.UPDATE])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.USERNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.AVATAR,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: User.COMMENTS,
        isRequired: true,
        ofModelName: (Comment).toString(),
        associatedKey: Comment.BY));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: User.HABITS,
        isRequired: true,
        ofModelName: (Habit).toString(),
        associatedKey: Habit.AUTHOR));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.UPVOTEDHABITS,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.DOWNVOTEDHABITS,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));
  });
}

class _UserModelType extends ModelType<User> {
  const _UserModelType();

  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
}
