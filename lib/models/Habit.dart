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

/** This is an auto generated class representing the Habit type in your schema. */
@immutable
class Habit extends Model {
  static const classType = const _HabitModelType();
  final String id;
  final String tagline;
  final String category;
  final String? details;
  final int? ups;
  final int? downs;
  final User? author;
  final List<Comment>? comments;
  final int? version;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Habit._internal({
    required this.id,
    required this.tagline,
    required this.category,
    this.details,
    this.ups,
    this.downs,
    required this.author,
    this.comments,
    this.version,
  }) : super(id: id);

  factory Habit(
      {String? id,
      required String tagline,
      required String category,
      String? details,
      int? ups,
      int? downs,
      required User? author,
      List<Comment>? comments,
      int? version}) {
    return Habit._internal(
      id: id ?? UUID.getUUID(),
      tagline: tagline,
      category: category,
      details: details,
      ups: ups,
      downs: downs,
      author: author,
      comments: comments != null ? List.unmodifiable(comments) : comments,
      version: version,
    );
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Habit &&
        id == other.id &&
        tagline == other.tagline &&
        category == other.category &&
        details == other.details &&
        ups == other.ups &&
        downs == other.downs &&
        author == other.author &&
        DeepCollectionEquality().equals(comments, other.comments) &&
        version == other.version;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Habit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("tagline=" + "$tagline" + ", ");
    buffer.write("category=" + "$category" + ", ");
    buffer.write("details=" + "$details" + ", ");
    buffer.write("ups=" + (ups != null ? ups.toString() : "null") + ", ");
    buffer.write("downs=" + (downs != null ? downs.toString() : "null") + ", ");
    buffer.write(
        "author=" + (author != null ? author.toString() : "null") + ', ');
    buffer.write('version=$version');
    buffer.write("}");

    return buffer.toString();
  }

  Habit copyWith(
      {String? id,
      String? tagline,
      String? category,
      String? details,
      int? ups,
      int? downs,
      User? author,
      List<Comment>? comments}) {
    return Habit(
        id: id ?? this.id,
        tagline: tagline ?? this.tagline,
        category: category ?? this.category,
        details: details ?? this.details,
        ups: ups ?? this.ups,
        downs: downs ?? this.downs,
        author: author ?? this.author,
        comments: comments ?? this.comments,
        version: version);
  }

  factory Habit.fromJson(Map<String, dynamic> json) {
    var id = json['id'];
    var tagline = json['tagline'];
    var category = json['category'];
    var details = json['details'] as String?;
    var ups = json['ups'];
    var downs = json['downs'];
    var author = json['author'] is Map
        ? User.fromJson(new Map<String, dynamic>.from(json['author']))
        : null;
    var comments = json['comments'] is List
        ? (json['comments'] as List)
            .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e)))
            .toList()
        : null;
    var version = json['_version'] as int?;
    return Habit(
      tagline: tagline,
      category: category,
      details: details,
      author: author,
      id: id,
      ups: ups,
      downs: downs,
      comments: comments,
      version: version,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagline': tagline,
        'category': category,
        'details': details,
        'ups': ups,
        'downs': downs,
        'author': author?.toJson(),
        'comments': comments?.map((e) => e.toJson()).toList(),
        '_version': version,
      };

  static final QueryField ID = QueryField(fieldName: "habit.id");
  static final QueryField TAGLINE = QueryField(fieldName: "tagline");
  static final QueryField CATEGORY = QueryField(fieldName: "category");
  static final QueryField UPS = QueryField(fieldName: "ups");
  static final QueryField DOWNS = QueryField(fieldName: "downs");
  static final QueryField AUTHOR = QueryField(
      fieldName: "author",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (User).toString()));
  static final QueryField COMMENTS = QueryField(
      fieldName: "comments",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Comment).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Habit";
    modelSchemaDefinition.pluralName = "Habits";

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
          operations: [ModelOperation.CREATE, ModelOperation.DELETE])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Habit.TAGLINE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Habit.CATEGORY,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Habit.UPS,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Habit.DOWNS,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Habit.AUTHOR,
        isRequired: true,
        targetName: "owner",
        ofModelName: (User).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Habit.COMMENTS,
        isRequired: true,
        ofModelName: (Comment).toString(),
        associatedKey: Comment.HABITCOMMENTSID));
  });
}

class _HabitModelType extends ModelType<Habit> {
  const _HabitModelType();

  @override
  Habit fromJson(Map<String, dynamic> jsonData) {
    return Habit.fromJson(jsonData);
  }
}
