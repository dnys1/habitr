// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;
import 'package:habitr_models/src/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class GAccessLevel extends EnumClass {
  const GAccessLevel._(String name) : super(name);

  static const GAccessLevel guest = _$gAccessLevelguest;

  static const GAccessLevel private = _$gAccessLevelprivate;

  static const GAccessLevel protected = _$gAccessLevelprotected;

  static Serializer<GAccessLevel> get serializer => _$gAccessLevelSerializer;
  static BuiltSet<GAccessLevel> get values => _$gAccessLevelValues;
  static GAccessLevel valueOf(String name) => _$gAccessLevelValueOf(name);
}

abstract class GAWSDateTime
    implements Built<GAWSDateTime, GAWSDateTimeBuilder> {
  GAWSDateTime._();

  factory GAWSDateTime([String? value]) =>
      _$GAWSDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GAWSDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GAWSDateTime>(
          (Object serialized) => GAWSDateTime((serialized as String?)));
}

class GCategory extends EnumClass {
  const GCategory._(String name) : super(name);

  static const GCategory Health = _$gCategoryHealth;

  static const GCategory Finance = _$gCategoryFinance;

  static const GCategory Productivity = _$gCategoryProductivity;

  static const GCategory Relationships = _$gCategoryRelationships;

  static Serializer<GCategory> get serializer => _$gCategorySerializer;
  static BuiltSet<GCategory> get values => _$gCategoryValues;
  static GCategory valueOf(String name) => _$gCategoryValueOf(name);
}

abstract class GCreateCommentInput
    implements Built<GCreateCommentInput, GCreateCommentInputBuilder> {
  GCreateCommentInput._();

  factory GCreateCommentInput(
      [Function(GCreateCommentInputBuilder b) updates]) = _$GCreateCommentInput;

  String? get id;
  String? get habitId;
  String? get owner;
  String get comment;
  static Serializer<GCreateCommentInput> get serializer =>
      _$gCreateCommentInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateCommentInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreateCommentInput.serializer, json);
}

abstract class GCreateHabitInput
    implements Built<GCreateHabitInput, GCreateHabitInputBuilder> {
  GCreateHabitInput._();

  factory GCreateHabitInput([Function(GCreateHabitInputBuilder b) updates]) =
      _$GCreateHabitInput;

  String? get id;
  String get tagline;
  GCategory get category;
  String? get details;
  int? get ups;
  int? get downs;
  String? get owner;
  static Serializer<GCreateHabitInput> get serializer =>
      _$gCreateHabitInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateHabitInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateHabitInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreateHabitInput.serializer, json);
}

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get username;
  String? get displayUsername;
  String? get name;
  GS3ObjectInput? get avatar;
  BuiltList<String>? get upvotedHabits;
  BuiltList<String>? get downvotedHabits;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreateUserInput.serializer, json);
}

abstract class GDeleteCommentInput
    implements Built<GDeleteCommentInput, GDeleteCommentInputBuilder> {
  GDeleteCommentInput._();

  factory GDeleteCommentInput(
      [Function(GDeleteCommentInputBuilder b) updates]) = _$GDeleteCommentInput;

  String get id;
  static Serializer<GDeleteCommentInput> get serializer =>
      _$gDeleteCommentInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GDeleteCommentInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteCommentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GDeleteCommentInput.serializer, json);
}

abstract class GDeleteHabitInput
    implements Built<GDeleteHabitInput, GDeleteHabitInputBuilder> {
  GDeleteHabitInput._();

  factory GDeleteHabitInput([Function(GDeleteHabitInputBuilder b) updates]) =
      _$GDeleteHabitInput;

  String get id;
  static Serializer<GDeleteHabitInput> get serializer =>
      _$gDeleteHabitInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GDeleteHabitInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteHabitInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GDeleteHabitInput.serializer, json);
}

abstract class GDeleteUserInput
    implements Built<GDeleteUserInput, GDeleteUserInputBuilder> {
  GDeleteUserInput._();

  factory GDeleteUserInput([Function(GDeleteUserInputBuilder b) updates]) =
      _$GDeleteUserInput;

  String get username;
  static Serializer<GDeleteUserInput> get serializer =>
      _$gDeleteUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GDeleteUserInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GDeleteUserInput.serializer, json);
}

class GModelAttributeTypes extends EnumClass {
  const GModelAttributeTypes._(String name) : super(name);

  static const GModelAttributeTypes binary = _$gModelAttributeTypesbinary;

  static const GModelAttributeTypes binarySet = _$gModelAttributeTypesbinarySet;

  @BuiltValueEnumConst(wireName: 'bool')
  static const GModelAttributeTypes Gbool = _$gModelAttributeTypesGbool;

  static const GModelAttributeTypes list = _$gModelAttributeTypeslist;

  static const GModelAttributeTypes map = _$gModelAttributeTypesmap;

  static const GModelAttributeTypes number = _$gModelAttributeTypesnumber;

  static const GModelAttributeTypes numberSet = _$gModelAttributeTypesnumberSet;

  static const GModelAttributeTypes string = _$gModelAttributeTypesstring;

  static const GModelAttributeTypes stringSet = _$gModelAttributeTypesstringSet;

  @BuiltValueEnumConst(wireName: '_null')
  static const GModelAttributeTypes G_null = _$gModelAttributeTypesG_null;

  static Serializer<GModelAttributeTypes> get serializer =>
      _$gModelAttributeTypesSerializer;
  static BuiltSet<GModelAttributeTypes> get values =>
      _$gModelAttributeTypesValues;
  static GModelAttributeTypes valueOf(String name) =>
      _$gModelAttributeTypesValueOf(name);
}

abstract class GModelBooleanInput
    implements Built<GModelBooleanInput, GModelBooleanInputBuilder> {
  GModelBooleanInput._();

  factory GModelBooleanInput([Function(GModelBooleanInputBuilder b) updates]) =
      _$GModelBooleanInput;

  bool? get ne;
  bool? get eq;
  bool? get attributeExists;
  GModelAttributeTypes? get attributeType;
  static Serializer<GModelBooleanInput> get serializer =>
      _$gModelBooleanInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelBooleanInput.serializer, this)
          as Map<String, dynamic>);
  static GModelBooleanInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelBooleanInput.serializer, json);
}

abstract class GModelCategoryInput
    implements Built<GModelCategoryInput, GModelCategoryInputBuilder> {
  GModelCategoryInput._();

  factory GModelCategoryInput(
      [Function(GModelCategoryInputBuilder b) updates]) = _$GModelCategoryInput;

  GCategory? get eq;
  GCategory? get ne;
  static Serializer<GModelCategoryInput> get serializer =>
      _$gModelCategoryInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelCategoryInput.serializer, this)
          as Map<String, dynamic>);
  static GModelCategoryInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelCategoryInput.serializer, json);
}

abstract class GModelCommentConditionInput
    implements
        Built<GModelCommentConditionInput, GModelCommentConditionInputBuilder> {
  GModelCommentConditionInput._();

  factory GModelCommentConditionInput(
          [Function(GModelCommentConditionInputBuilder b) updates]) =
      _$GModelCommentConditionInput;

  GModelIDInput? get habitId;
  GModelStringInput? get owner;
  GModelStringInput? get comment;
  BuiltList<GModelCommentConditionInput>? get and;
  BuiltList<GModelCommentConditionInput>? get or;
  GModelCommentConditionInput? get not;
  static Serializer<GModelCommentConditionInput> get serializer =>
      _$gModelCommentConditionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GModelCommentConditionInput.serializer, this) as Map<String, dynamic>);
  static GModelCommentConditionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GModelCommentConditionInput.serializer, json);
}

abstract class GModelCommentFilterInput
    implements
        Built<GModelCommentFilterInput, GModelCommentFilterInputBuilder> {
  GModelCommentFilterInput._();

  factory GModelCommentFilterInput(
          [Function(GModelCommentFilterInputBuilder b) updates]) =
      _$GModelCommentFilterInput;

  GModelIDInput? get id;
  GModelIDInput? get habitId;
  GModelStringInput? get owner;
  GModelStringInput? get comment;
  BuiltList<GModelCommentFilterInput>? get and;
  BuiltList<GModelCommentFilterInput>? get or;
  GModelCommentFilterInput? get not;
  static Serializer<GModelCommentFilterInput> get serializer =>
      _$gModelCommentFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelCommentFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GModelCommentFilterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GModelCommentFilterInput.serializer, json);
}

abstract class GModelFloatInput
    implements Built<GModelFloatInput, GModelFloatInputBuilder> {
  GModelFloatInput._();

  factory GModelFloatInput([Function(GModelFloatInputBuilder b) updates]) =
      _$GModelFloatInput;

  double? get ne;
  double? get eq;
  double? get le;
  double? get lt;
  double? get ge;
  double? get gt;
  BuiltList<double>? get between;
  bool? get attributeExists;
  GModelAttributeTypes? get attributeType;
  static Serializer<GModelFloatInput> get serializer =>
      _$gModelFloatInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelFloatInput.serializer, this)
          as Map<String, dynamic>);
  static GModelFloatInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelFloatInput.serializer, json);
}

abstract class GModelHabitConditionInput
    implements
        Built<GModelHabitConditionInput, GModelHabitConditionInputBuilder> {
  GModelHabitConditionInput._();

  factory GModelHabitConditionInput(
          [Function(GModelHabitConditionInputBuilder b) updates]) =
      _$GModelHabitConditionInput;

  GModelStringInput? get tagline;
  GModelCategoryInput? get category;
  GModelStringInput? get details;
  GModelIntInput? get ups;
  GModelIntInput? get downs;
  GModelStringInput? get owner;
  BuiltList<GModelHabitConditionInput>? get and;
  BuiltList<GModelHabitConditionInput>? get or;
  GModelHabitConditionInput? get not;
  static Serializer<GModelHabitConditionInput> get serializer =>
      _$gModelHabitConditionInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelHabitConditionInput.serializer, this)
          as Map<String, dynamic>);
  static GModelHabitConditionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GModelHabitConditionInput.serializer, json);
}

abstract class GModelHabitFilterInput
    implements Built<GModelHabitFilterInput, GModelHabitFilterInputBuilder> {
  GModelHabitFilterInput._();

  factory GModelHabitFilterInput(
          [Function(GModelHabitFilterInputBuilder b) updates]) =
      _$GModelHabitFilterInput;

  GModelIDInput? get id;
  GModelStringInput? get tagline;
  GModelCategoryInput? get category;
  GModelStringInput? get details;
  GModelIntInput? get ups;
  GModelIntInput? get downs;
  GModelStringInput? get owner;
  BuiltList<GModelHabitFilterInput>? get and;
  BuiltList<GModelHabitFilterInput>? get or;
  GModelHabitFilterInput? get not;
  static Serializer<GModelHabitFilterInput> get serializer =>
      _$gModelHabitFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelHabitFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GModelHabitFilterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelHabitFilterInput.serializer, json);
}

abstract class GModelIDInput
    implements Built<GModelIDInput, GModelIDInputBuilder> {
  GModelIDInput._();

  factory GModelIDInput([Function(GModelIDInputBuilder b) updates]) =
      _$GModelIDInput;

  String? get ne;
  String? get eq;
  String? get le;
  String? get lt;
  String? get ge;
  String? get gt;
  String? get contains;
  String? get notContains;
  BuiltList<String>? get between;
  String? get beginsWith;
  bool? get attributeExists;
  GModelAttributeTypes? get attributeType;
  GModelSizeInput? get size;
  static Serializer<GModelIDInput> get serializer => _$gModelIDInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelIDInput.serializer, this)
          as Map<String, dynamic>);
  static GModelIDInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelIDInput.serializer, json);
}

abstract class GModelIntInput
    implements Built<GModelIntInput, GModelIntInputBuilder> {
  GModelIntInput._();

  factory GModelIntInput([Function(GModelIntInputBuilder b) updates]) =
      _$GModelIntInput;

  int? get ne;
  int? get eq;
  int? get le;
  int? get lt;
  int? get ge;
  int? get gt;
  BuiltList<int>? get between;
  bool? get attributeExists;
  GModelAttributeTypes? get attributeType;
  static Serializer<GModelIntInput> get serializer =>
      _$gModelIntInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelIntInput.serializer, this)
          as Map<String, dynamic>);
  static GModelIntInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelIntInput.serializer, json);
}

abstract class GModelIntKeyConditionInput
    implements
        Built<GModelIntKeyConditionInput, GModelIntKeyConditionInputBuilder> {
  GModelIntKeyConditionInput._();

  factory GModelIntKeyConditionInput(
          [Function(GModelIntKeyConditionInputBuilder b) updates]) =
      _$GModelIntKeyConditionInput;

  int? get eq;
  int? get le;
  int? get lt;
  int? get ge;
  int? get gt;
  BuiltList<int>? get between;
  static Serializer<GModelIntKeyConditionInput> get serializer =>
      _$gModelIntKeyConditionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GModelIntKeyConditionInput.serializer, this) as Map<String, dynamic>);
  static GModelIntKeyConditionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GModelIntKeyConditionInput.serializer, json);
}

abstract class GModelSizeInput
    implements Built<GModelSizeInput, GModelSizeInputBuilder> {
  GModelSizeInput._();

  factory GModelSizeInput([Function(GModelSizeInputBuilder b) updates]) =
      _$GModelSizeInput;

  int? get ne;
  int? get eq;
  int? get le;
  int? get lt;
  int? get ge;
  int? get gt;
  BuiltList<int>? get between;
  static Serializer<GModelSizeInput> get serializer =>
      _$gModelSizeInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelSizeInput.serializer, this)
          as Map<String, dynamic>);
  static GModelSizeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelSizeInput.serializer, json);
}

class GModelSortDirection extends EnumClass {
  const GModelSortDirection._(String name) : super(name);

  static const GModelSortDirection ASC = _$gModelSortDirectionASC;

  static const GModelSortDirection DESC = _$gModelSortDirectionDESC;

  static Serializer<GModelSortDirection> get serializer =>
      _$gModelSortDirectionSerializer;
  static BuiltSet<GModelSortDirection> get values =>
      _$gModelSortDirectionValues;
  static GModelSortDirection valueOf(String name) =>
      _$gModelSortDirectionValueOf(name);
}

abstract class GModelStringInput
    implements Built<GModelStringInput, GModelStringInputBuilder> {
  GModelStringInput._();

  factory GModelStringInput([Function(GModelStringInputBuilder b) updates]) =
      _$GModelStringInput;

  String? get ne;
  String? get eq;
  String? get le;
  String? get lt;
  String? get ge;
  String? get gt;
  String? get contains;
  String? get notContains;
  BuiltList<String>? get between;
  String? get beginsWith;
  bool? get attributeExists;
  GModelAttributeTypes? get attributeType;
  GModelSizeInput? get size;
  static Serializer<GModelStringInput> get serializer =>
      _$gModelStringInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelStringInput.serializer, this)
          as Map<String, dynamic>);
  static GModelStringInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelStringInput.serializer, json);
}

abstract class GModelUserConditionInput
    implements
        Built<GModelUserConditionInput, GModelUserConditionInputBuilder> {
  GModelUserConditionInput._();

  factory GModelUserConditionInput(
          [Function(GModelUserConditionInputBuilder b) updates]) =
      _$GModelUserConditionInput;

  GModelStringInput? get displayUsername;
  GModelStringInput? get name;
  GModelIDInput? get upvotedHabits;
  GModelIDInput? get downvotedHabits;
  BuiltList<GModelUserConditionInput>? get and;
  BuiltList<GModelUserConditionInput>? get or;
  GModelUserConditionInput? get not;
  static Serializer<GModelUserConditionInput> get serializer =>
      _$gModelUserConditionInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelUserConditionInput.serializer, this)
          as Map<String, dynamic>);
  static GModelUserConditionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GModelUserConditionInput.serializer, json);
}

abstract class GModelUserFilterInput
    implements Built<GModelUserFilterInput, GModelUserFilterInputBuilder> {
  GModelUserFilterInput._();

  factory GModelUserFilterInput(
          [Function(GModelUserFilterInputBuilder b) updates]) =
      _$GModelUserFilterInput;

  GModelStringInput? get username;
  GModelStringInput? get displayUsername;
  GModelStringInput? get name;
  GModelIDInput? get upvotedHabits;
  GModelIDInput? get downvotedHabits;
  BuiltList<GModelUserFilterInput>? get and;
  BuiltList<GModelUserFilterInput>? get or;
  GModelUserFilterInput? get not;
  static Serializer<GModelUserFilterInput> get serializer =>
      _$gModelUserFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GModelUserFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GModelUserFilterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GModelUserFilterInput.serializer, json);
}

abstract class GS3ObjectInput
    implements Built<GS3ObjectInput, GS3ObjectInputBuilder> {
  GS3ObjectInput._();

  factory GS3ObjectInput([Function(GS3ObjectInputBuilder b) updates]) =
      _$GS3ObjectInput;

  String get bucket;
  String get region;
  String get key;
  String? get cognitoId;
  GAccessLevel? get accessLevel;
  static Serializer<GS3ObjectInput> get serializer =>
      _$gS3ObjectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GS3ObjectInput.serializer, this)
          as Map<String, dynamic>);
  static GS3ObjectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GS3ObjectInput.serializer, json);
}

abstract class GUpdateCommentInput
    implements Built<GUpdateCommentInput, GUpdateCommentInputBuilder> {
  GUpdateCommentInput._();

  factory GUpdateCommentInput(
      [Function(GUpdateCommentInputBuilder b) updates]) = _$GUpdateCommentInput;

  String get id;
  String? get habitId;
  String? get owner;
  String? get comment;
  static Serializer<GUpdateCommentInput> get serializer =>
      _$gUpdateCommentInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateCommentInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateCommentInput.serializer, json);
}

abstract class GUpdateHabitInput
    implements Built<GUpdateHabitInput, GUpdateHabitInputBuilder> {
  GUpdateHabitInput._();

  factory GUpdateHabitInput([Function(GUpdateHabitInputBuilder b) updates]) =
      _$GUpdateHabitInput;

  String get id;
  String? get tagline;
  GCategory? get category;
  String? get details;
  int? get ups;
  int? get downs;
  String? get owner;
  static Serializer<GUpdateHabitInput> get serializer =>
      _$gUpdateHabitInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateHabitInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateHabitInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateHabitInput.serializer, json);
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String get username;
  String? get displayUsername;
  String? get name;
  GS3ObjectInput? get avatar;
  BuiltList<String>? get upvotedHabits;
  BuiltList<String>? get downvotedHabits;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateUserInput.serializer, json);
}

class GVoteType extends EnumClass {
  const GVoteType._(String name) : super(name);

  static const GVoteType upvote = _$gVoteTypeupvote;

  static const GVoteType downvote = _$gVoteTypedownvote;

  static const GVoteType removeUpvote = _$gVoteTyperemoveUpvote;

  static const GVoteType removeDownvote = _$gVoteTyperemoveDownvote;

  static Serializer<GVoteType> get serializer => _$gVoteTypeSerializer;
  static BuiltSet<GVoteType> get values => _$gVoteTypeValues;
  static GVoteType valueOf(String name) => _$gVoteTypeValueOf(name);
}
