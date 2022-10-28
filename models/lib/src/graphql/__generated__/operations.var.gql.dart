// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:habitr_models/src/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:habitr_models/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'operations.var.gql.g.dart';

abstract class GListHabitsVars
    implements Built<GListHabitsVars, GListHabitsVarsBuilder> {
  GListHabitsVars._();

  factory GListHabitsVars([Function(GListHabitsVarsBuilder b) updates]) =
      _$GListHabitsVars;

  int get limit;
  String? get nextToken;
  static Serializer<GListHabitsVars> get serializer =>
      _$gListHabitsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsVars.serializer,
        json,
      );
}

abstract class GListHabitsByCategoryVars
    implements
        Built<GListHabitsByCategoryVars, GListHabitsByCategoryVarsBuilder> {
  GListHabitsByCategoryVars._();

  factory GListHabitsByCategoryVars(
          [Function(GListHabitsByCategoryVarsBuilder b) updates]) =
      _$GListHabitsByCategoryVars;

  _i2.GCategory get category;
  int get limit;
  String? get nextToken;
  static Serializer<GListHabitsByCategoryVars> get serializer =>
      _$gListHabitsByCategoryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsByCategoryVars.serializer,
        json,
      );
}

abstract class GGetHabitVars
    implements Built<GGetHabitVars, GGetHabitVarsBuilder> {
  GGetHabitVars._();

  factory GGetHabitVars([Function(GGetHabitVarsBuilder b) updates]) =
      _$GGetHabitVars;

  String get habitId;
  static Serializer<GGetHabitVars> get serializer => _$gGetHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitVars.serializer,
        json,
      );
}

abstract class GGetUserVars
    implements Built<GGetUserVars, GGetUserVarsBuilder> {
  GGetUserVars._();

  factory GGetUserVars([Function(GGetUserVarsBuilder b) updates]) =
      _$GGetUserVars;

  String get username;
  static Serializer<GGetUserVars> get serializer => _$gGetUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserVars.serializer,
        json,
      );
}

abstract class GGetSelfVars
    implements Built<GGetSelfVars, GGetSelfVarsBuilder> {
  GGetSelfVars._();

  factory GGetSelfVars([Function(GGetSelfVarsBuilder b) updates]) =
      _$GGetSelfVars;

  String get username;
  static Serializer<GGetSelfVars> get serializer => _$gGetSelfVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfVars.serializer,
        json,
      );
}

abstract class GGetCommentVars
    implements Built<GGetCommentVars, GGetCommentVarsBuilder> {
  GGetCommentVars._();

  factory GGetCommentVars([Function(GGetCommentVarsBuilder b) updates]) =
      _$GGetCommentVars;

  String get commentId;
  static Serializer<GGetCommentVars> get serializer =>
      _$gGetCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentVars.serializer,
        json,
      );
}

abstract class GSubscribeToUserVars
    implements Built<GSubscribeToUserVars, GSubscribeToUserVarsBuilder> {
  GSubscribeToUserVars._();

  factory GSubscribeToUserVars(
          [Function(GSubscribeToUserVarsBuilder b) updates]) =
      _$GSubscribeToUserVars;

  String get username;
  static Serializer<GSubscribeToUserVars> get serializer =>
      _$gSubscribeToUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserVars.serializer,
        json,
      );
}

abstract class GOnCreateCommentVars
    implements Built<GOnCreateCommentVars, GOnCreateCommentVarsBuilder> {
  GOnCreateCommentVars._();

  factory GOnCreateCommentVars(
          [Function(GOnCreateCommentVarsBuilder b) updates]) =
      _$GOnCreateCommentVars;

  static Serializer<GOnCreateCommentVars> get serializer =>
      _$gOnCreateCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentVars.serializer,
        json,
      );
}

abstract class GOnUpdateCommentVars
    implements Built<GOnUpdateCommentVars, GOnUpdateCommentVarsBuilder> {
  GOnUpdateCommentVars._();

  factory GOnUpdateCommentVars(
          [Function(GOnUpdateCommentVarsBuilder b) updates]) =
      _$GOnUpdateCommentVars;

  static Serializer<GOnUpdateCommentVars> get serializer =>
      _$gOnUpdateCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentVars.serializer,
        json,
      );
}

abstract class GOnCreateHabitVars
    implements Built<GOnCreateHabitVars, GOnCreateHabitVarsBuilder> {
  GOnCreateHabitVars._();

  factory GOnCreateHabitVars([Function(GOnCreateHabitVarsBuilder b) updates]) =
      _$GOnCreateHabitVars;

  static Serializer<GOnCreateHabitVars> get serializer =>
      _$gOnCreateHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitVars.serializer,
        json,
      );
}

abstract class GOnUpdateHabitVars
    implements Built<GOnUpdateHabitVars, GOnUpdateHabitVarsBuilder> {
  GOnUpdateHabitVars._();

  factory GOnUpdateHabitVars([Function(GOnUpdateHabitVarsBuilder b) updates]) =
      _$GOnUpdateHabitVars;

  static Serializer<GOnUpdateHabitVars> get serializer =>
      _$gOnUpdateHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitVars.serializer,
        json,
      );
}

abstract class GCreateUserVars
    implements Built<GCreateUserVars, GCreateUserVarsBuilder> {
  GCreateUserVars._();

  factory GCreateUserVars([Function(GCreateUserVarsBuilder b) updates]) =
      _$GCreateUserVars;

  String get username;
  String? get displayUsername;
  static Serializer<GCreateUserVars> get serializer =>
      _$gCreateUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserVars.serializer,
        json,
      );
}

abstract class GCreateCommentVars
    implements Built<GCreateCommentVars, GCreateCommentVarsBuilder> {
  GCreateCommentVars._();

  factory GCreateCommentVars([Function(GCreateCommentVarsBuilder b) updates]) =
      _$GCreateCommentVars;

  String get comment;
  String get habitId;
  static Serializer<GCreateCommentVars> get serializer =>
      _$gCreateCommentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentVars.serializer,
        json,
      );
}

abstract class GCreateHabitVars
    implements Built<GCreateHabitVars, GCreateHabitVarsBuilder> {
  GCreateHabitVars._();

  factory GCreateHabitVars([Function(GCreateHabitVarsBuilder b) updates]) =
      _$GCreateHabitVars;

  String get tagline;
  _i2.GCategory get category;
  String? get details;
  static Serializer<GCreateHabitVars> get serializer =>
      _$gCreateHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitVars.serializer,
        json,
      );
}

abstract class GUpdateUserVars
    implements Built<GUpdateUserVars, GUpdateUserVarsBuilder> {
  GUpdateUserVars._();

  factory GUpdateUserVars([Function(GUpdateUserVarsBuilder b) updates]) =
      _$GUpdateUserVars;

  _i2.GUpdateUserInput get input;
  static Serializer<GUpdateUserVars> get serializer =>
      _$gUpdateUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserVars.serializer,
        json,
      );
}

abstract class GUpdateHabitVars
    implements Built<GUpdateHabitVars, GUpdateHabitVarsBuilder> {
  GUpdateHabitVars._();

  factory GUpdateHabitVars([Function(GUpdateHabitVarsBuilder b) updates]) =
      _$GUpdateHabitVars;

  _i2.GUpdateHabitInput get input;
  static Serializer<GUpdateHabitVars> get serializer =>
      _$gUpdateHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitVars.serializer,
        json,
      );
}

abstract class GDeleteHabitVars
    implements Built<GDeleteHabitVars, GDeleteHabitVarsBuilder> {
  GDeleteHabitVars._();

  factory GDeleteHabitVars([Function(GDeleteHabitVarsBuilder b) updates]) =
      _$GDeleteHabitVars;

  String get habitId;
  int get version;
  static Serializer<GDeleteHabitVars> get serializer =>
      _$gDeleteHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteHabitVars.serializer,
        json,
      );
}

abstract class GVoteForHabitVars
    implements Built<GVoteForHabitVars, GVoteForHabitVarsBuilder> {
  GVoteForHabitVars._();

  factory GVoteForHabitVars([Function(GVoteForHabitVarsBuilder b) updates]) =
      _$GVoteForHabitVars;

  String get habitId;
  _i2.GVoteType get type;
  static Serializer<GVoteForHabitVars> get serializer =>
      _$gVoteForHabitVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoteForHabitVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoteForHabitVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoteForHabitVars.serializer,
        json,
      );
}

abstract class GSubscribeToVotesVars
    implements Built<GSubscribeToVotesVars, GSubscribeToVotesVarsBuilder> {
  GSubscribeToVotesVars._();

  factory GSubscribeToVotesVars(
          [Function(GSubscribeToVotesVarsBuilder b) updates]) =
      _$GSubscribeToVotesVars;

  static Serializer<GSubscribeToVotesVars> get serializer =>
      _$gSubscribeToVotesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToVotesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToVotesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToVotesVars.serializer,
        json,
      );
}

abstract class GSearchUsersVars
    implements Built<GSearchUsersVars, GSearchUsersVarsBuilder> {
  GSearchUsersVars._();

  factory GSearchUsersVars([Function(GSearchUsersVarsBuilder b) updates]) =
      _$GSearchUsersVars;

  String get query;
  String get excludeUsername;
  int get limit;
  static Serializer<GSearchUsersVars> get serializer =>
      _$gSearchUsersVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersVars.serializer,
        json,
      );
}

abstract class GSearchHabitsVars
    implements Built<GSearchHabitsVars, GSearchHabitsVarsBuilder> {
  GSearchHabitsVars._();

  factory GSearchHabitsVars([Function(GSearchHabitsVarsBuilder b) updates]) =
      _$GSearchHabitsVars;

  String get query;
  int get limit;
  static Serializer<GSearchHabitsVars> get serializer =>
      _$gSearchHabitsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsVars.serializer,
        json,
      );
}

abstract class GAllHabitFieldsVars
    implements Built<GAllHabitFieldsVars, GAllHabitFieldsVarsBuilder> {
  GAllHabitFieldsVars._();

  factory GAllHabitFieldsVars(
      [Function(GAllHabitFieldsVarsBuilder b) updates]) = _$GAllHabitFieldsVars;

  static Serializer<GAllHabitFieldsVars> get serializer =>
      _$gAllHabitFieldsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsVars.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsVars
    implements
        Built<GAllPublicUserFieldsVars, GAllPublicUserFieldsVarsBuilder> {
  GAllPublicUserFieldsVars._();

  factory GAllPublicUserFieldsVars(
          [Function(GAllPublicUserFieldsVarsBuilder b) updates]) =
      _$GAllPublicUserFieldsVars;

  static Serializer<GAllPublicUserFieldsVars> get serializer =>
      _$gAllPublicUserFieldsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsVars.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsVars
    implements
        Built<GAllPrivateUserFieldsVars, GAllPrivateUserFieldsVarsBuilder> {
  GAllPrivateUserFieldsVars._();

  factory GAllPrivateUserFieldsVars(
          [Function(GAllPrivateUserFieldsVarsBuilder b) updates]) =
      _$GAllPrivateUserFieldsVars;

  static Serializer<GAllPrivateUserFieldsVars> get serializer =>
      _$gAllPrivateUserFieldsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsVars.serializer,
        json,
      );
}

abstract class GAllCommentFieldsVars
    implements Built<GAllCommentFieldsVars, GAllCommentFieldsVarsBuilder> {
  GAllCommentFieldsVars._();

  factory GAllCommentFieldsVars(
          [Function(GAllCommentFieldsVarsBuilder b) updates]) =
      _$GAllCommentFieldsVars;

  static Serializer<GAllCommentFieldsVars> get serializer =>
      _$gAllCommentFieldsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsVars.serializer,
        json,
      );
}

abstract class GAllVoteResultFieldsVars
    implements
        Built<GAllVoteResultFieldsVars, GAllVoteResultFieldsVarsBuilder> {
  GAllVoteResultFieldsVars._();

  factory GAllVoteResultFieldsVars(
          [Function(GAllVoteResultFieldsVarsBuilder b) updates]) =
      _$GAllVoteResultFieldsVars;

  static Serializer<GAllVoteResultFieldsVars> get serializer =>
      _$gAllVoteResultFieldsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllVoteResultFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllVoteResultFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllVoteResultFieldsVars.serializer,
        json,
      );
}
