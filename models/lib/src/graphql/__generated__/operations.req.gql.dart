// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_exec/gql_exec.dart' as _i1;
import 'package:habitr_models/src/graphql/__generated__/operations.ast.gql.dart'
    as _i2;
import 'package:habitr_models/src/graphql/__generated__/operations.var.gql.dart'
    as _i3;
import 'package:habitr_models/src/graphql/__generated__/serializers.gql.dart'
    as _i4;

part 'operations.req.gql.g.dart';

abstract class GListHabits implements Built<GListHabits, GListHabitsBuilder> {
  GListHabits._();

  factory GListHabits([Function(GListHabitsBuilder b) updates]) = _$GListHabits;

  static void _initializeBuilder(GListHabitsBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'ListHabits',
    );
  _i3.GListHabitsVars get vars;
  _i1.Operation get operation;
  static Serializer<GListHabits> get serializer => _$gListHabitsSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListHabits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabits? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListHabits.serializer,
        json,
      );
}

abstract class GListHabitsByCategory
    implements Built<GListHabitsByCategory, GListHabitsByCategoryBuilder> {
  GListHabitsByCategory._();

  factory GListHabitsByCategory(
          [Function(GListHabitsByCategoryBuilder b) updates]) =
      _$GListHabitsByCategory;

  static void _initializeBuilder(GListHabitsByCategoryBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'ListHabitsByCategory',
    );
  _i3.GListHabitsByCategoryVars get vars;
  _i1.Operation get operation;
  static Serializer<GListHabitsByCategory> get serializer =>
      _$gListHabitsByCategorySerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListHabitsByCategory.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategory? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListHabitsByCategory.serializer,
        json,
      );
}

abstract class GGetHabit implements Built<GGetHabit, GGetHabitBuilder> {
  GGetHabit._();

  factory GGetHabit([Function(GGetHabitBuilder b) updates]) = _$GGetHabit;

  static void _initializeBuilder(GGetHabitBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'GetHabit',
    );
  _i3.GGetHabitVars get vars;
  _i1.Operation get operation;
  static Serializer<GGetHabit> get serializer => _$gGetHabitSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GGetHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabit? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GGetHabit.serializer,
        json,
      );
}

abstract class GGetUser implements Built<GGetUser, GGetUserBuilder> {
  GGetUser._();

  factory GGetUser([Function(GGetUserBuilder b) updates]) = _$GGetUser;

  static void _initializeBuilder(GGetUserBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'GetUser',
    );
  _i3.GGetUserVars get vars;
  _i1.Operation get operation;
  static Serializer<GGetUser> get serializer => _$gGetUserSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GGetUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUser? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GGetUser.serializer,
        json,
      );
}

abstract class GGetSelf implements Built<GGetSelf, GGetSelfBuilder> {
  GGetSelf._();

  factory GGetSelf([Function(GGetSelfBuilder b) updates]) = _$GGetSelf;

  static void _initializeBuilder(GGetSelfBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'GetSelf',
    );
  _i3.GGetSelfVars get vars;
  _i1.Operation get operation;
  static Serializer<GGetSelf> get serializer => _$gGetSelfSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GGetSelf.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelf? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GGetSelf.serializer,
        json,
      );
}

abstract class GGetComment implements Built<GGetComment, GGetCommentBuilder> {
  GGetComment._();

  factory GGetComment([Function(GGetCommentBuilder b) updates]) = _$GGetComment;

  static void _initializeBuilder(GGetCommentBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'GetComment',
    );
  _i3.GGetCommentVars get vars;
  _i1.Operation get operation;
  static Serializer<GGetComment> get serializer => _$gGetCommentSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GGetComment.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetComment? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GGetComment.serializer,
        json,
      );
}

abstract class GSubscribeToUser
    implements Built<GSubscribeToUser, GSubscribeToUserBuilder> {
  GSubscribeToUser._();

  factory GSubscribeToUser([Function(GSubscribeToUserBuilder b) updates]) =
      _$GSubscribeToUser;

  static void _initializeBuilder(GSubscribeToUserBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'SubscribeToUser',
    );
  _i3.GSubscribeToUserVars get vars;
  _i1.Operation get operation;
  static Serializer<GSubscribeToUser> get serializer =>
      _$gSubscribeToUserSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GSubscribeToUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUser? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GSubscribeToUser.serializer,
        json,
      );
}

abstract class GCreateUser implements Built<GCreateUser, GCreateUserBuilder> {
  GCreateUser._();

  factory GCreateUser([Function(GCreateUserBuilder b) updates]) = _$GCreateUser;

  static void _initializeBuilder(GCreateUserBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'CreateUser',
    );
  _i3.GCreateUserVars get vars;
  _i1.Operation get operation;
  static Serializer<GCreateUser> get serializer => _$gCreateUserSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GCreateUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUser? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GCreateUser.serializer,
        json,
      );
}

abstract class GCreateComment
    implements Built<GCreateComment, GCreateCommentBuilder> {
  GCreateComment._();

  factory GCreateComment([Function(GCreateCommentBuilder b) updates]) =
      _$GCreateComment;

  static void _initializeBuilder(GCreateCommentBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'CreateComment',
    );
  _i3.GCreateCommentVars get vars;
  _i1.Operation get operation;
  static Serializer<GCreateComment> get serializer =>
      _$gCreateCommentSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GCreateComment.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateComment? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GCreateComment.serializer,
        json,
      );
}

abstract class GCreateHabit
    implements Built<GCreateHabit, GCreateHabitBuilder> {
  GCreateHabit._();

  factory GCreateHabit([Function(GCreateHabitBuilder b) updates]) =
      _$GCreateHabit;

  static void _initializeBuilder(GCreateHabitBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'CreateHabit',
    );
  _i3.GCreateHabitVars get vars;
  _i1.Operation get operation;
  static Serializer<GCreateHabit> get serializer => _$gCreateHabitSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GCreateHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabit? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GCreateHabit.serializer,
        json,
      );
}

abstract class GUpdateUser implements Built<GUpdateUser, GUpdateUserBuilder> {
  GUpdateUser._();

  factory GUpdateUser([Function(GUpdateUserBuilder b) updates]) = _$GUpdateUser;

  static void _initializeBuilder(GUpdateUserBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'UpdateUser',
    );
  _i3.GUpdateUserVars get vars;
  _i1.Operation get operation;
  static Serializer<GUpdateUser> get serializer => _$gUpdateUserSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GUpdateUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUser? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GUpdateUser.serializer,
        json,
      );
}

abstract class GUpdateHabit
    implements Built<GUpdateHabit, GUpdateHabitBuilder> {
  GUpdateHabit._();

  factory GUpdateHabit([Function(GUpdateHabitBuilder b) updates]) =
      _$GUpdateHabit;

  static void _initializeBuilder(GUpdateHabitBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'UpdateHabit',
    );
  _i3.GUpdateHabitVars get vars;
  _i1.Operation get operation;
  static Serializer<GUpdateHabit> get serializer => _$gUpdateHabitSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GUpdateHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabit? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GUpdateHabit.serializer,
        json,
      );
}

abstract class GDeleteHabit
    implements Built<GDeleteHabit, GDeleteHabitBuilder> {
  GDeleteHabit._();

  factory GDeleteHabit([Function(GDeleteHabitBuilder b) updates]) =
      _$GDeleteHabit;

  static void _initializeBuilder(GDeleteHabitBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'DeleteHabit',
    );
  _i3.GDeleteHabitVars get vars;
  _i1.Operation get operation;
  static Serializer<GDeleteHabit> get serializer => _$gDeleteHabitSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GDeleteHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteHabit? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GDeleteHabit.serializer,
        json,
      );
}

abstract class GVoteForHabit
    implements Built<GVoteForHabit, GVoteForHabitBuilder> {
  GVoteForHabit._();

  factory GVoteForHabit([Function(GVoteForHabitBuilder b) updates]) =
      _$GVoteForHabit;

  static void _initializeBuilder(GVoteForHabitBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'VoteForHabit',
    );
  _i3.GVoteForHabitVars get vars;
  _i1.Operation get operation;
  static Serializer<GVoteForHabit> get serializer => _$gVoteForHabitSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GVoteForHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoteForHabit? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GVoteForHabit.serializer,
        json,
      );
}

abstract class GSubscribeToVotes
    implements Built<GSubscribeToVotes, GSubscribeToVotesBuilder> {
  GSubscribeToVotes._();

  factory GSubscribeToVotes([Function(GSubscribeToVotesBuilder b) updates]) =
      _$GSubscribeToVotes;

  static void _initializeBuilder(GSubscribeToVotesBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'SubscribeToVotes',
    );
  _i3.GSubscribeToVotesVars get vars;
  _i1.Operation get operation;
  static Serializer<GSubscribeToVotes> get serializer =>
      _$gSubscribeToVotesSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GSubscribeToVotes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToVotes? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GSubscribeToVotes.serializer,
        json,
      );
}

abstract class GSearchUsers
    implements Built<GSearchUsers, GSearchUsersBuilder> {
  GSearchUsers._();

  factory GSearchUsers([Function(GSearchUsersBuilder b) updates]) =
      _$GSearchUsers;

  static void _initializeBuilder(GSearchUsersBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'SearchUsers',
    );
  _i3.GSearchUsersVars get vars;
  _i1.Operation get operation;
  static Serializer<GSearchUsers> get serializer => _$gSearchUsersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GSearchUsers.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsers? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GSearchUsers.serializer,
        json,
      );
}

abstract class GSearchHabits
    implements Built<GSearchHabits, GSearchHabitsBuilder> {
  GSearchHabits._();

  factory GSearchHabits([Function(GSearchHabitsBuilder b) updates]) =
      _$GSearchHabits;

  static void _initializeBuilder(GSearchHabitsBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'SearchHabits',
    );
  _i3.GSearchHabitsVars get vars;
  _i1.Operation get operation;
  static Serializer<GSearchHabits> get serializer => _$gSearchHabitsSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GSearchHabits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabits? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GSearchHabits.serializer,
        json,
      );
}
