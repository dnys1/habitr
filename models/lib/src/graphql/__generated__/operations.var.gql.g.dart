// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListHabitsVars> _$gListHabitsVarsSerializer =
    new _$GListHabitsVarsSerializer();
Serializer<GListHabitsByCategoryVars> _$gListHabitsByCategoryVarsSerializer =
    new _$GListHabitsByCategoryVarsSerializer();
Serializer<GGetHabitVars> _$gGetHabitVarsSerializer =
    new _$GGetHabitVarsSerializer();
Serializer<GGetUserVars> _$gGetUserVarsSerializer =
    new _$GGetUserVarsSerializer();
Serializer<GGetSelfVars> _$gGetSelfVarsSerializer =
    new _$GGetSelfVarsSerializer();
Serializer<GGetCommentVars> _$gGetCommentVarsSerializer =
    new _$GGetCommentVarsSerializer();
Serializer<GSubscribeToUserVars> _$gSubscribeToUserVarsSerializer =
    new _$GSubscribeToUserVarsSerializer();
Serializer<GCreateUserVars> _$gCreateUserVarsSerializer =
    new _$GCreateUserVarsSerializer();
Serializer<GCreateCommentVars> _$gCreateCommentVarsSerializer =
    new _$GCreateCommentVarsSerializer();
Serializer<GCreateHabitVars> _$gCreateHabitVarsSerializer =
    new _$GCreateHabitVarsSerializer();
Serializer<GUpdateUserVars> _$gUpdateUserVarsSerializer =
    new _$GUpdateUserVarsSerializer();
Serializer<GUpdateHabitVars> _$gUpdateHabitVarsSerializer =
    new _$GUpdateHabitVarsSerializer();
Serializer<GDeleteHabitVars> _$gDeleteHabitVarsSerializer =
    new _$GDeleteHabitVarsSerializer();
Serializer<GVoteForHabitVars> _$gVoteForHabitVarsSerializer =
    new _$GVoteForHabitVarsSerializer();
Serializer<GSubscribeToVotesVars> _$gSubscribeToVotesVarsSerializer =
    new _$GSubscribeToVotesVarsSerializer();
Serializer<GSearchUsersVars> _$gSearchUsersVarsSerializer =
    new _$GSearchUsersVarsSerializer();
Serializer<GSearchHabitsVars> _$gSearchHabitsVarsSerializer =
    new _$GSearchHabitsVarsSerializer();
Serializer<GAllHabitFieldsVars> _$gAllHabitFieldsVarsSerializer =
    new _$GAllHabitFieldsVarsSerializer();
Serializer<GAllPublicUserFieldsVars> _$gAllPublicUserFieldsVarsSerializer =
    new _$GAllPublicUserFieldsVarsSerializer();
Serializer<GAllPrivateUserFieldsVars> _$gAllPrivateUserFieldsVarsSerializer =
    new _$GAllPrivateUserFieldsVarsSerializer();
Serializer<GAllCommentFieldsVars> _$gAllCommentFieldsVarsSerializer =
    new _$GAllCommentFieldsVarsSerializer();
Serializer<GAllVoteResultFieldsVars> _$gAllVoteResultFieldsVarsSerializer =
    new _$GAllVoteResultFieldsVarsSerializer();

class _$GListHabitsVarsSerializer
    implements StructuredSerializer<GListHabitsVars> {
  @override
  final Iterable<Type> types = const [GListHabitsVars, _$GListHabitsVars];
  @override
  final String wireName = 'GListHabitsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GListHabitsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nextToken;
    if (value != null) {
      result
        ..add('nextToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GListHabitsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListHabitsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nextToken':
          result.nextToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GListHabitsByCategoryVarsSerializer
    implements StructuredSerializer<GListHabitsByCategoryVars> {
  @override
  final Iterable<Type> types = const [
    GListHabitsByCategoryVars,
    _$GListHabitsByCategoryVars
  ];
  @override
  final String wireName = 'GListHabitsByCategoryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListHabitsByCategoryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(_i2.GCategory)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nextToken;
    if (value != null) {
      result
        ..add('nextToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GListHabitsByCategoryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListHabitsByCategoryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GCategory)) as _i2.GCategory;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nextToken':
          result.nextToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetHabitVarsSerializer implements StructuredSerializer<GGetHabitVars> {
  @override
  final Iterable<Type> types = const [GGetHabitVars, _$GGetHabitVars];
  @override
  final String wireName = 'GGetHabitVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetHabitVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'habitId',
      serializers.serialize(object.habitId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetHabitVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetHabitVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'habitId':
          result.habitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserVarsSerializer implements StructuredSerializer<GGetUserVars> {
  @override
  final Iterable<Type> types = const [GGetUserVars, _$GGetUserVars];
  @override
  final String wireName = 'GGetUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSelfVarsSerializer implements StructuredSerializer<GGetSelfVars> {
  @override
  final Iterable<Type> types = const [GGetSelfVars, _$GGetSelfVars];
  @override
  final String wireName = 'GGetSelfVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetSelfVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetSelfVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSelfVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCommentVarsSerializer
    implements StructuredSerializer<GGetCommentVars> {
  @override
  final Iterable<Type> types = const [GGetCommentVars, _$GGetCommentVars];
  @override
  final String wireName = 'GGetCommentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'commentId',
      serializers.serialize(object.commentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSubscribeToUserVarsSerializer
    implements StructuredSerializer<GSubscribeToUserVars> {
  @override
  final Iterable<Type> types = const [
    GSubscribeToUserVars,
    _$GSubscribeToUserVars
  ];
  @override
  final String wireName = 'GSubscribeToUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSubscribeToUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSubscribeToUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSubscribeToUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserVarsSerializer
    implements StructuredSerializer<GCreateUserVars> {
  @override
  final Iterable<Type> types = const [GCreateUserVars, _$GCreateUserVars];
  @override
  final String wireName = 'GCreateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.displayUsername;
    if (value != null) {
      result
        ..add('displayUsername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayUsername':
          result.displayUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentVarsSerializer
    implements StructuredSerializer<GCreateCommentVars> {
  @override
  final Iterable<Type> types = const [GCreateCommentVars, _$GCreateCommentVars];
  @override
  final String wireName = 'GCreateCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
      'habitId',
      serializers.serialize(object.habitId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'habitId':
          result.habitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHabitVarsSerializer
    implements StructuredSerializer<GCreateHabitVars> {
  @override
  final Iterable<Type> types = const [GCreateHabitVars, _$GCreateHabitVars];
  @override
  final String wireName = 'GCreateHabitVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateHabitVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tagline',
      serializers.serialize(object.tagline,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(_i2.GCategory)),
    ];
    Object? value;
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateHabitVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHabitVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tagline':
          result.tagline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GCategory)) as _i2.GCategory;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserVarsSerializer
    implements StructuredSerializer<GUpdateUserVars> {
  @override
  final Iterable<Type> types = const [GUpdateUserVars, _$GUpdateUserVars];
  @override
  final String wireName = 'GUpdateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GUpdateUserInput)),
    ];

    return result;
  }

  @override
  GUpdateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUpdateUserInput))!
              as _i2.GUpdateUserInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateHabitVarsSerializer
    implements StructuredSerializer<GUpdateHabitVars> {
  @override
  final Iterable<Type> types = const [GUpdateHabitVars, _$GUpdateHabitVars];
  @override
  final String wireName = 'GUpdateHabitVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateHabitVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GUpdateHabitInput)),
    ];

    return result;
  }

  @override
  GUpdateHabitVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateHabitVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUpdateHabitInput))!
              as _i2.GUpdateHabitInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteHabitVarsSerializer
    implements StructuredSerializer<GDeleteHabitVars> {
  @override
  final Iterable<Type> types = const [GDeleteHabitVars, _$GDeleteHabitVars];
  @override
  final String wireName = 'GDeleteHabitVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteHabitVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'habitId',
      serializers.serialize(object.habitId,
          specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GDeleteHabitVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteHabitVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'habitId':
          result.habitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GVoteForHabitVarsSerializer
    implements StructuredSerializer<GVoteForHabitVars> {
  @override
  final Iterable<Type> types = const [GVoteForHabitVars, _$GVoteForHabitVars];
  @override
  final String wireName = 'GVoteForHabitVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVoteForHabitVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'habitId',
      serializers.serialize(object.habitId,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i2.GVoteType)),
    ];

    return result;
  }

  @override
  GVoteForHabitVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVoteForHabitVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'habitId':
          result.habitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GVoteType)) as _i2.GVoteType;
          break;
      }
    }

    return result.build();
  }
}

class _$GSubscribeToVotesVarsSerializer
    implements StructuredSerializer<GSubscribeToVotesVars> {
  @override
  final Iterable<Type> types = const [
    GSubscribeToVotesVars,
    _$GSubscribeToVotesVars
  ];
  @override
  final String wireName = 'GSubscribeToVotesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSubscribeToVotesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GSubscribeToVotesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GSubscribeToVotesVarsBuilder().build();
  }
}

class _$GSearchUsersVarsSerializer
    implements StructuredSerializer<GSearchUsersVars> {
  @override
  final Iterable<Type> types = const [GSearchUsersVars, _$GSearchUsersVars];
  @override
  final String wireName = 'GSearchUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchUsersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
      'excludeUsername',
      serializers.serialize(object.excludeUsername,
          specifiedType: const FullType(String)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GSearchUsersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchUsersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'excludeUsername':
          result.excludeUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchHabitsVarsSerializer
    implements StructuredSerializer<GSearchHabitsVars> {
  @override
  final Iterable<Type> types = const [GSearchHabitsVars, _$GSearchHabitsVars];
  @override
  final String wireName = 'GSearchHabitsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchHabitsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GSearchHabitsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchHabitsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllHabitFieldsVarsSerializer
    implements StructuredSerializer<GAllHabitFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GAllHabitFieldsVars,
    _$GAllHabitFieldsVars
  ];
  @override
  final String wireName = 'GAllHabitFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllHabitFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllHabitFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllHabitFieldsVarsBuilder().build();
  }
}

class _$GAllPublicUserFieldsVarsSerializer
    implements StructuredSerializer<GAllPublicUserFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GAllPublicUserFieldsVars,
    _$GAllPublicUserFieldsVars
  ];
  @override
  final String wireName = 'GAllPublicUserFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllPublicUserFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllPublicUserFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllPublicUserFieldsVarsBuilder().build();
  }
}

class _$GAllPrivateUserFieldsVarsSerializer
    implements StructuredSerializer<GAllPrivateUserFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GAllPrivateUserFieldsVars,
    _$GAllPrivateUserFieldsVars
  ];
  @override
  final String wireName = 'GAllPrivateUserFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllPrivateUserFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllPrivateUserFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllPrivateUserFieldsVarsBuilder().build();
  }
}

class _$GAllCommentFieldsVarsSerializer
    implements StructuredSerializer<GAllCommentFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GAllCommentFieldsVars,
    _$GAllCommentFieldsVars
  ];
  @override
  final String wireName = 'GAllCommentFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllCommentFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllCommentFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllCommentFieldsVarsBuilder().build();
  }
}

class _$GAllVoteResultFieldsVarsSerializer
    implements StructuredSerializer<GAllVoteResultFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GAllVoteResultFieldsVars,
    _$GAllVoteResultFieldsVars
  ];
  @override
  final String wireName = 'GAllVoteResultFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllVoteResultFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllVoteResultFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllVoteResultFieldsVarsBuilder().build();
  }
}

class _$GListHabitsVars extends GListHabitsVars {
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GListHabitsVars([void Function(GListHabitsVarsBuilder)? updates]) =>
      (new GListHabitsVarsBuilder()..update(updates)).build();

  _$GListHabitsVars._({required this.limit, this.nextToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(limit, 'GListHabitsVars', 'limit');
  }

  @override
  GListHabitsVars rebuild(void Function(GListHabitsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListHabitsVarsBuilder toBuilder() =>
      new GListHabitsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListHabitsVars &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), nextToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListHabitsVars')
          ..add('limit', limit)
          ..add('nextToken', nextToken))
        .toString();
  }
}

class GListHabitsVarsBuilder
    implements Builder<GListHabitsVars, GListHabitsVarsBuilder> {
  _$GListHabitsVars? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GListHabitsVarsBuilder();

  GListHabitsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListHabitsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListHabitsVars;
  }

  @override
  void update(void Function(GListHabitsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListHabitsVars build() {
    final _$result = _$v ??
        new _$GListHabitsVars._(
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, 'GListHabitsVars', 'limit'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

class _$GListHabitsByCategoryVars extends GListHabitsByCategoryVars {
  @override
  final _i2.GCategory category;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GListHabitsByCategoryVars(
          [void Function(GListHabitsByCategoryVarsBuilder)? updates]) =>
      (new GListHabitsByCategoryVarsBuilder()..update(updates)).build();

  _$GListHabitsByCategoryVars._(
      {required this.category, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        category, 'GListHabitsByCategoryVars', 'category');
    BuiltValueNullFieldError.checkNotNull(
        limit, 'GListHabitsByCategoryVars', 'limit');
  }

  @override
  GListHabitsByCategoryVars rebuild(
          void Function(GListHabitsByCategoryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListHabitsByCategoryVarsBuilder toBuilder() =>
      new GListHabitsByCategoryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListHabitsByCategoryVars &&
        category == other.category &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, category.hashCode), limit.hashCode), nextToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListHabitsByCategoryVars')
          ..add('category', category)
          ..add('limit', limit)
          ..add('nextToken', nextToken))
        .toString();
  }
}

class GListHabitsByCategoryVarsBuilder
    implements
        Builder<GListHabitsByCategoryVars, GListHabitsByCategoryVarsBuilder> {
  _$GListHabitsByCategoryVars? _$v;

  _i2.GCategory? _category;
  _i2.GCategory? get category => _$this._category;
  set category(_i2.GCategory? category) => _$this._category = category;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GListHabitsByCategoryVarsBuilder();

  GListHabitsByCategoryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListHabitsByCategoryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListHabitsByCategoryVars;
  }

  @override
  void update(void Function(GListHabitsByCategoryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListHabitsByCategoryVars build() {
    final _$result = _$v ??
        new _$GListHabitsByCategoryVars._(
            category: BuiltValueNullFieldError.checkNotNull(
                category, 'GListHabitsByCategoryVars', 'category'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, 'GListHabitsByCategoryVars', 'limit'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

class _$GGetHabitVars extends GGetHabitVars {
  @override
  final String habitId;

  factory _$GGetHabitVars([void Function(GGetHabitVarsBuilder)? updates]) =>
      (new GGetHabitVarsBuilder()..update(updates)).build();

  _$GGetHabitVars._({required this.habitId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(habitId, 'GGetHabitVars', 'habitId');
  }

  @override
  GGetHabitVars rebuild(void Function(GGetHabitVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetHabitVarsBuilder toBuilder() => new GGetHabitVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetHabitVars && habitId == other.habitId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, habitId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetHabitVars')
          ..add('habitId', habitId))
        .toString();
  }
}

class GGetHabitVarsBuilder
    implements Builder<GGetHabitVars, GGetHabitVarsBuilder> {
  _$GGetHabitVars? _$v;

  String? _habitId;
  String? get habitId => _$this._habitId;
  set habitId(String? habitId) => _$this._habitId = habitId;

  GGetHabitVarsBuilder();

  GGetHabitVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _habitId = $v.habitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetHabitVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetHabitVars;
  }

  @override
  void update(void Function(GGetHabitVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetHabitVars build() {
    final _$result = _$v ??
        new _$GGetHabitVars._(
            habitId: BuiltValueNullFieldError.checkNotNull(
                habitId, 'GGetHabitVars', 'habitId'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserVars extends GGetUserVars {
  @override
  final String username;

  factory _$GGetUserVars([void Function(GGetUserVarsBuilder)? updates]) =>
      (new GGetUserVarsBuilder()..update(updates)).build();

  _$GGetUserVars._({required this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(username, 'GGetUserVars', 'username');
  }

  @override
  GGetUserVars rebuild(void Function(GGetUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserVarsBuilder toBuilder() => new GGetUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserVars && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserVars')
          ..add('username', username))
        .toString();
  }
}

class GGetUserVarsBuilder
    implements Builder<GGetUserVars, GGetUserVarsBuilder> {
  _$GGetUserVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetUserVarsBuilder();

  GGetUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserVars;
  }

  @override
  void update(void Function(GGetUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserVars build() {
    final _$result = _$v ??
        new _$GGetUserVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetUserVars', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetSelfVars extends GGetSelfVars {
  @override
  final String username;

  factory _$GGetSelfVars([void Function(GGetSelfVarsBuilder)? updates]) =>
      (new GGetSelfVarsBuilder()..update(updates)).build();

  _$GGetSelfVars._({required this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(username, 'GGetSelfVars', 'username');
  }

  @override
  GGetSelfVars rebuild(void Function(GGetSelfVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSelfVarsBuilder toBuilder() => new GGetSelfVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSelfVars && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSelfVars')
          ..add('username', username))
        .toString();
  }
}

class GGetSelfVarsBuilder
    implements Builder<GGetSelfVars, GGetSelfVarsBuilder> {
  _$GGetSelfVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetSelfVarsBuilder();

  GGetSelfVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSelfVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSelfVars;
  }

  @override
  void update(void Function(GGetSelfVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSelfVars build() {
    final _$result = _$v ??
        new _$GGetSelfVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetSelfVars', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetCommentVars extends GGetCommentVars {
  @override
  final String commentId;

  factory _$GGetCommentVars([void Function(GGetCommentVarsBuilder)? updates]) =>
      (new GGetCommentVarsBuilder()..update(updates)).build();

  _$GGetCommentVars._({required this.commentId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        commentId, 'GGetCommentVars', 'commentId');
  }

  @override
  GGetCommentVars rebuild(void Function(GGetCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCommentVarsBuilder toBuilder() =>
      new GGetCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCommentVars && commentId == other.commentId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, commentId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCommentVars')
          ..add('commentId', commentId))
        .toString();
  }
}

class GGetCommentVarsBuilder
    implements Builder<GGetCommentVars, GGetCommentVarsBuilder> {
  _$GGetCommentVars? _$v;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  GGetCommentVarsBuilder();

  GGetCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentId = $v.commentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCommentVars;
  }

  @override
  void update(void Function(GGetCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCommentVars build() {
    final _$result = _$v ??
        new _$GGetCommentVars._(
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, 'GGetCommentVars', 'commentId'));
    replace(_$result);
    return _$result;
  }
}

class _$GSubscribeToUserVars extends GSubscribeToUserVars {
  @override
  final String username;

  factory _$GSubscribeToUserVars(
          [void Function(GSubscribeToUserVarsBuilder)? updates]) =>
      (new GSubscribeToUserVarsBuilder()..update(updates)).build();

  _$GSubscribeToUserVars._({required this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GSubscribeToUserVars', 'username');
  }

  @override
  GSubscribeToUserVars rebuild(
          void Function(GSubscribeToUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSubscribeToUserVarsBuilder toBuilder() =>
      new GSubscribeToUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSubscribeToUserVars && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSubscribeToUserVars')
          ..add('username', username))
        .toString();
  }
}

class GSubscribeToUserVarsBuilder
    implements Builder<GSubscribeToUserVars, GSubscribeToUserVarsBuilder> {
  _$GSubscribeToUserVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GSubscribeToUserVarsBuilder();

  GSubscribeToUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSubscribeToUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSubscribeToUserVars;
  }

  @override
  void update(void Function(GSubscribeToUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSubscribeToUserVars build() {
    final _$result = _$v ??
        new _$GSubscribeToUserVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GSubscribeToUserVars', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserVars extends GCreateUserVars {
  @override
  final String username;
  @override
  final String? displayUsername;

  factory _$GCreateUserVars([void Function(GCreateUserVarsBuilder)? updates]) =>
      (new GCreateUserVarsBuilder()..update(updates)).build();

  _$GCreateUserVars._({required this.username, this.displayUsername})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GCreateUserVars', 'username');
  }

  @override
  GCreateUserVars rebuild(void Function(GCreateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserVarsBuilder toBuilder() =>
      new GCreateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserVars &&
        username == other.username &&
        displayUsername == other.displayUsername;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), displayUsername.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateUserVars')
          ..add('username', username)
          ..add('displayUsername', displayUsername))
        .toString();
  }
}

class GCreateUserVarsBuilder
    implements Builder<GCreateUserVars, GCreateUserVarsBuilder> {
  _$GCreateUserVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _displayUsername;
  String? get displayUsername => _$this._displayUsername;
  set displayUsername(String? displayUsername) =>
      _$this._displayUsername = displayUsername;

  GCreateUserVarsBuilder();

  GCreateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _displayUsername = $v.displayUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserVars;
  }

  @override
  void update(void Function(GCreateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateUserVars build() {
    final _$result = _$v ??
        new _$GCreateUserVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GCreateUserVars', 'username'),
            displayUsername: displayUsername);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentVars extends GCreateCommentVars {
  @override
  final String comment;
  @override
  final String habitId;

  factory _$GCreateCommentVars(
          [void Function(GCreateCommentVarsBuilder)? updates]) =>
      (new GCreateCommentVarsBuilder()..update(updates)).build();

  _$GCreateCommentVars._({required this.comment, required this.habitId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        comment, 'GCreateCommentVars', 'comment');
    BuiltValueNullFieldError.checkNotNull(
        habitId, 'GCreateCommentVars', 'habitId');
  }

  @override
  GCreateCommentVars rebuild(
          void Function(GCreateCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentVarsBuilder toBuilder() =>
      new GCreateCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentVars &&
        comment == other.comment &&
        habitId == other.habitId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, comment.hashCode), habitId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateCommentVars')
          ..add('comment', comment)
          ..add('habitId', habitId))
        .toString();
  }
}

class GCreateCommentVarsBuilder
    implements Builder<GCreateCommentVars, GCreateCommentVarsBuilder> {
  _$GCreateCommentVars? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _habitId;
  String? get habitId => _$this._habitId;
  set habitId(String? habitId) => _$this._habitId = habitId;

  GCreateCommentVarsBuilder();

  GCreateCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _habitId = $v.habitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentVars;
  }

  @override
  void update(void Function(GCreateCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateCommentVars build() {
    final _$result = _$v ??
        new _$GCreateCommentVars._(
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, 'GCreateCommentVars', 'comment'),
            habitId: BuiltValueNullFieldError.checkNotNull(
                habitId, 'GCreateCommentVars', 'habitId'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHabitVars extends GCreateHabitVars {
  @override
  final String tagline;
  @override
  final _i2.GCategory category;
  @override
  final String? details;

  factory _$GCreateHabitVars(
          [void Function(GCreateHabitVarsBuilder)? updates]) =>
      (new GCreateHabitVarsBuilder()..update(updates)).build();

  _$GCreateHabitVars._(
      {required this.tagline, required this.category, this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tagline, 'GCreateHabitVars', 'tagline');
    BuiltValueNullFieldError.checkNotNull(
        category, 'GCreateHabitVars', 'category');
  }

  @override
  GCreateHabitVars rebuild(void Function(GCreateHabitVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHabitVarsBuilder toBuilder() =>
      new GCreateHabitVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHabitVars &&
        tagline == other.tagline &&
        category == other.category &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, tagline.hashCode), category.hashCode), details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateHabitVars')
          ..add('tagline', tagline)
          ..add('category', category)
          ..add('details', details))
        .toString();
  }
}

class GCreateHabitVarsBuilder
    implements Builder<GCreateHabitVars, GCreateHabitVarsBuilder> {
  _$GCreateHabitVars? _$v;

  String? _tagline;
  String? get tagline => _$this._tagline;
  set tagline(String? tagline) => _$this._tagline = tagline;

  _i2.GCategory? _category;
  _i2.GCategory? get category => _$this._category;
  set category(_i2.GCategory? category) => _$this._category = category;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  GCreateHabitVarsBuilder();

  GCreateHabitVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagline = $v.tagline;
      _category = $v.category;
      _details = $v.details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHabitVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHabitVars;
  }

  @override
  void update(void Function(GCreateHabitVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateHabitVars build() {
    final _$result = _$v ??
        new _$GCreateHabitVars._(
            tagline: BuiltValueNullFieldError.checkNotNull(
                tagline, 'GCreateHabitVars', 'tagline'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, 'GCreateHabitVars', 'category'),
            details: details);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserVars extends GUpdateUserVars {
  @override
  final _i2.GUpdateUserInput input;

  factory _$GUpdateUserVars([void Function(GUpdateUserVarsBuilder)? updates]) =>
      (new GUpdateUserVarsBuilder()..update(updates)).build();

  _$GUpdateUserVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GUpdateUserVars', 'input');
  }

  @override
  GUpdateUserVars rebuild(void Function(GUpdateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserVarsBuilder toBuilder() =>
      new GUpdateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateUserVars')..add('input', input))
        .toString();
  }
}

class GUpdateUserVarsBuilder
    implements Builder<GUpdateUserVars, GUpdateUserVarsBuilder> {
  _$GUpdateUserVars? _$v;

  _i2.GUpdateUserInputBuilder? _input;
  _i2.GUpdateUserInputBuilder get input =>
      _$this._input ??= new _i2.GUpdateUserInputBuilder();
  set input(_i2.GUpdateUserInputBuilder? input) => _$this._input = input;

  GUpdateUserVarsBuilder();

  GUpdateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserVars;
  }

  @override
  void update(void Function(GUpdateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateUserVars build() {
    _$GUpdateUserVars _$result;
    try {
      _$result = _$v ?? new _$GUpdateUserVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateHabitVars extends GUpdateHabitVars {
  @override
  final _i2.GUpdateHabitInput input;

  factory _$GUpdateHabitVars(
          [void Function(GUpdateHabitVarsBuilder)? updates]) =>
      (new GUpdateHabitVarsBuilder()..update(updates)).build();

  _$GUpdateHabitVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GUpdateHabitVars', 'input');
  }

  @override
  GUpdateHabitVars rebuild(void Function(GUpdateHabitVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateHabitVarsBuilder toBuilder() =>
      new GUpdateHabitVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateHabitVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateHabitVars')
          ..add('input', input))
        .toString();
  }
}

class GUpdateHabitVarsBuilder
    implements Builder<GUpdateHabitVars, GUpdateHabitVarsBuilder> {
  _$GUpdateHabitVars? _$v;

  _i2.GUpdateHabitInputBuilder? _input;
  _i2.GUpdateHabitInputBuilder get input =>
      _$this._input ??= new _i2.GUpdateHabitInputBuilder();
  set input(_i2.GUpdateHabitInputBuilder? input) => _$this._input = input;

  GUpdateHabitVarsBuilder();

  GUpdateHabitVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateHabitVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateHabitVars;
  }

  @override
  void update(void Function(GUpdateHabitVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateHabitVars build() {
    _$GUpdateHabitVars _$result;
    try {
      _$result = _$v ?? new _$GUpdateHabitVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateHabitVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteHabitVars extends GDeleteHabitVars {
  @override
  final String habitId;
  @override
  final int version;

  factory _$GDeleteHabitVars(
          [void Function(GDeleteHabitVarsBuilder)? updates]) =>
      (new GDeleteHabitVarsBuilder()..update(updates)).build();

  _$GDeleteHabitVars._({required this.habitId, required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        habitId, 'GDeleteHabitVars', 'habitId');
    BuiltValueNullFieldError.checkNotNull(
        version, 'GDeleteHabitVars', 'version');
  }

  @override
  GDeleteHabitVars rebuild(void Function(GDeleteHabitVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteHabitVarsBuilder toBuilder() =>
      new GDeleteHabitVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteHabitVars &&
        habitId == other.habitId &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, habitId.hashCode), version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteHabitVars')
          ..add('habitId', habitId)
          ..add('version', version))
        .toString();
  }
}

class GDeleteHabitVarsBuilder
    implements Builder<GDeleteHabitVars, GDeleteHabitVarsBuilder> {
  _$GDeleteHabitVars? _$v;

  String? _habitId;
  String? get habitId => _$this._habitId;
  set habitId(String? habitId) => _$this._habitId = habitId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  GDeleteHabitVarsBuilder();

  GDeleteHabitVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _habitId = $v.habitId;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteHabitVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteHabitVars;
  }

  @override
  void update(void Function(GDeleteHabitVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteHabitVars build() {
    final _$result = _$v ??
        new _$GDeleteHabitVars._(
            habitId: BuiltValueNullFieldError.checkNotNull(
                habitId, 'GDeleteHabitVars', 'habitId'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, 'GDeleteHabitVars', 'version'));
    replace(_$result);
    return _$result;
  }
}

class _$GVoteForHabitVars extends GVoteForHabitVars {
  @override
  final String habitId;
  @override
  final _i2.GVoteType type;

  factory _$GVoteForHabitVars(
          [void Function(GVoteForHabitVarsBuilder)? updates]) =>
      (new GVoteForHabitVarsBuilder()..update(updates)).build();

  _$GVoteForHabitVars._({required this.habitId, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        habitId, 'GVoteForHabitVars', 'habitId');
    BuiltValueNullFieldError.checkNotNull(type, 'GVoteForHabitVars', 'type');
  }

  @override
  GVoteForHabitVars rebuild(void Function(GVoteForHabitVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVoteForHabitVarsBuilder toBuilder() =>
      new GVoteForHabitVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVoteForHabitVars &&
        habitId == other.habitId &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, habitId.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GVoteForHabitVars')
          ..add('habitId', habitId)
          ..add('type', type))
        .toString();
  }
}

class GVoteForHabitVarsBuilder
    implements Builder<GVoteForHabitVars, GVoteForHabitVarsBuilder> {
  _$GVoteForHabitVars? _$v;

  String? _habitId;
  String? get habitId => _$this._habitId;
  set habitId(String? habitId) => _$this._habitId = habitId;

  _i2.GVoteType? _type;
  _i2.GVoteType? get type => _$this._type;
  set type(_i2.GVoteType? type) => _$this._type = type;

  GVoteForHabitVarsBuilder();

  GVoteForHabitVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _habitId = $v.habitId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVoteForHabitVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVoteForHabitVars;
  }

  @override
  void update(void Function(GVoteForHabitVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GVoteForHabitVars build() {
    final _$result = _$v ??
        new _$GVoteForHabitVars._(
            habitId: BuiltValueNullFieldError.checkNotNull(
                habitId, 'GVoteForHabitVars', 'habitId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'GVoteForHabitVars', 'type'));
    replace(_$result);
    return _$result;
  }
}

class _$GSubscribeToVotesVars extends GSubscribeToVotesVars {
  factory _$GSubscribeToVotesVars(
          [void Function(GSubscribeToVotesVarsBuilder)? updates]) =>
      (new GSubscribeToVotesVarsBuilder()..update(updates)).build();

  _$GSubscribeToVotesVars._() : super._();

  @override
  GSubscribeToVotesVars rebuild(
          void Function(GSubscribeToVotesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSubscribeToVotesVarsBuilder toBuilder() =>
      new GSubscribeToVotesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSubscribeToVotesVars;
  }

  @override
  int get hashCode {
    return 158143860;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GSubscribeToVotesVars').toString();
  }
}

class GSubscribeToVotesVarsBuilder
    implements Builder<GSubscribeToVotesVars, GSubscribeToVotesVarsBuilder> {
  _$GSubscribeToVotesVars? _$v;

  GSubscribeToVotesVarsBuilder();

  @override
  void replace(GSubscribeToVotesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSubscribeToVotesVars;
  }

  @override
  void update(void Function(GSubscribeToVotesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSubscribeToVotesVars build() {
    final _$result = _$v ?? new _$GSubscribeToVotesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GSearchUsersVars extends GSearchUsersVars {
  @override
  final String query;
  @override
  final String excludeUsername;
  @override
  final int limit;

  factory _$GSearchUsersVars(
          [void Function(GSearchUsersVarsBuilder)? updates]) =>
      (new GSearchUsersVarsBuilder()..update(updates)).build();

  _$GSearchUsersVars._(
      {required this.query, required this.excludeUsername, required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(query, 'GSearchUsersVars', 'query');
    BuiltValueNullFieldError.checkNotNull(
        excludeUsername, 'GSearchUsersVars', 'excludeUsername');
    BuiltValueNullFieldError.checkNotNull(limit, 'GSearchUsersVars', 'limit');
  }

  @override
  GSearchUsersVars rebuild(void Function(GSearchUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchUsersVarsBuilder toBuilder() =>
      new GSearchUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchUsersVars &&
        query == other.query &&
        excludeUsername == other.excludeUsername &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, query.hashCode), excludeUsername.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSearchUsersVars')
          ..add('query', query)
          ..add('excludeUsername', excludeUsername)
          ..add('limit', limit))
        .toString();
  }
}

class GSearchUsersVarsBuilder
    implements Builder<GSearchUsersVars, GSearchUsersVarsBuilder> {
  _$GSearchUsersVars? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _excludeUsername;
  String? get excludeUsername => _$this._excludeUsername;
  set excludeUsername(String? excludeUsername) =>
      _$this._excludeUsername = excludeUsername;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GSearchUsersVarsBuilder();

  GSearchUsersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _excludeUsername = $v.excludeUsername;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchUsersVars;
  }

  @override
  void update(void Function(GSearchUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSearchUsersVars build() {
    final _$result = _$v ??
        new _$GSearchUsersVars._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'GSearchUsersVars', 'query'),
            excludeUsername: BuiltValueNullFieldError.checkNotNull(
                excludeUsername, 'GSearchUsersVars', 'excludeUsername'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, 'GSearchUsersVars', 'limit'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchHabitsVars extends GSearchHabitsVars {
  @override
  final String query;
  @override
  final int limit;

  factory _$GSearchHabitsVars(
          [void Function(GSearchHabitsVarsBuilder)? updates]) =>
      (new GSearchHabitsVarsBuilder()..update(updates)).build();

  _$GSearchHabitsVars._({required this.query, required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(query, 'GSearchHabitsVars', 'query');
    BuiltValueNullFieldError.checkNotNull(limit, 'GSearchHabitsVars', 'limit');
  }

  @override
  GSearchHabitsVars rebuild(void Function(GSearchHabitsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchHabitsVarsBuilder toBuilder() =>
      new GSearchHabitsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchHabitsVars &&
        query == other.query &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, query.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSearchHabitsVars')
          ..add('query', query)
          ..add('limit', limit))
        .toString();
  }
}

class GSearchHabitsVarsBuilder
    implements Builder<GSearchHabitsVars, GSearchHabitsVarsBuilder> {
  _$GSearchHabitsVars? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GSearchHabitsVarsBuilder();

  GSearchHabitsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchHabitsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchHabitsVars;
  }

  @override
  void update(void Function(GSearchHabitsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSearchHabitsVars build() {
    final _$result = _$v ??
        new _$GSearchHabitsVars._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'GSearchHabitsVars', 'query'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, 'GSearchHabitsVars', 'limit'));
    replace(_$result);
    return _$result;
  }
}

class _$GAllHabitFieldsVars extends GAllHabitFieldsVars {
  factory _$GAllHabitFieldsVars(
          [void Function(GAllHabitFieldsVarsBuilder)? updates]) =>
      (new GAllHabitFieldsVarsBuilder()..update(updates)).build();

  _$GAllHabitFieldsVars._() : super._();

  @override
  GAllHabitFieldsVars rebuild(
          void Function(GAllHabitFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllHabitFieldsVarsBuilder toBuilder() =>
      new GAllHabitFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllHabitFieldsVars;
  }

  @override
  int get hashCode {
    return 119210052;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllHabitFieldsVars').toString();
  }
}

class GAllHabitFieldsVarsBuilder
    implements Builder<GAllHabitFieldsVars, GAllHabitFieldsVarsBuilder> {
  _$GAllHabitFieldsVars? _$v;

  GAllHabitFieldsVarsBuilder();

  @override
  void replace(GAllHabitFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllHabitFieldsVars;
  }

  @override
  void update(void Function(GAllHabitFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllHabitFieldsVars build() {
    final _$result = _$v ?? new _$GAllHabitFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAllPublicUserFieldsVars extends GAllPublicUserFieldsVars {
  factory _$GAllPublicUserFieldsVars(
          [void Function(GAllPublicUserFieldsVarsBuilder)? updates]) =>
      (new GAllPublicUserFieldsVarsBuilder()..update(updates)).build();

  _$GAllPublicUserFieldsVars._() : super._();

  @override
  GAllPublicUserFieldsVars rebuild(
          void Function(GAllPublicUserFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllPublicUserFieldsVarsBuilder toBuilder() =>
      new GAllPublicUserFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllPublicUserFieldsVars;
  }

  @override
  int get hashCode {
    return 289190117;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllPublicUserFieldsVars').toString();
  }
}

class GAllPublicUserFieldsVarsBuilder
    implements
        Builder<GAllPublicUserFieldsVars, GAllPublicUserFieldsVarsBuilder> {
  _$GAllPublicUserFieldsVars? _$v;

  GAllPublicUserFieldsVarsBuilder();

  @override
  void replace(GAllPublicUserFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllPublicUserFieldsVars;
  }

  @override
  void update(void Function(GAllPublicUserFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllPublicUserFieldsVars build() {
    final _$result = _$v ?? new _$GAllPublicUserFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAllPrivateUserFieldsVars extends GAllPrivateUserFieldsVars {
  factory _$GAllPrivateUserFieldsVars(
          [void Function(GAllPrivateUserFieldsVarsBuilder)? updates]) =>
      (new GAllPrivateUserFieldsVarsBuilder()..update(updates)).build();

  _$GAllPrivateUserFieldsVars._() : super._();

  @override
  GAllPrivateUserFieldsVars rebuild(
          void Function(GAllPrivateUserFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllPrivateUserFieldsVarsBuilder toBuilder() =>
      new GAllPrivateUserFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllPrivateUserFieldsVars;
  }

  @override
  int get hashCode {
    return 816902451;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllPrivateUserFieldsVars').toString();
  }
}

class GAllPrivateUserFieldsVarsBuilder
    implements
        Builder<GAllPrivateUserFieldsVars, GAllPrivateUserFieldsVarsBuilder> {
  _$GAllPrivateUserFieldsVars? _$v;

  GAllPrivateUserFieldsVarsBuilder();

  @override
  void replace(GAllPrivateUserFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllPrivateUserFieldsVars;
  }

  @override
  void update(void Function(GAllPrivateUserFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllPrivateUserFieldsVars build() {
    final _$result = _$v ?? new _$GAllPrivateUserFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAllCommentFieldsVars extends GAllCommentFieldsVars {
  factory _$GAllCommentFieldsVars(
          [void Function(GAllCommentFieldsVarsBuilder)? updates]) =>
      (new GAllCommentFieldsVarsBuilder()..update(updates)).build();

  _$GAllCommentFieldsVars._() : super._();

  @override
  GAllCommentFieldsVars rebuild(
          void Function(GAllCommentFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllCommentFieldsVarsBuilder toBuilder() =>
      new GAllCommentFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllCommentFieldsVars;
  }

  @override
  int get hashCode {
    return 1010133509;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllCommentFieldsVars').toString();
  }
}

class GAllCommentFieldsVarsBuilder
    implements Builder<GAllCommentFieldsVars, GAllCommentFieldsVarsBuilder> {
  _$GAllCommentFieldsVars? _$v;

  GAllCommentFieldsVarsBuilder();

  @override
  void replace(GAllCommentFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllCommentFieldsVars;
  }

  @override
  void update(void Function(GAllCommentFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllCommentFieldsVars build() {
    final _$result = _$v ?? new _$GAllCommentFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAllVoteResultFieldsVars extends GAllVoteResultFieldsVars {
  factory _$GAllVoteResultFieldsVars(
          [void Function(GAllVoteResultFieldsVarsBuilder)? updates]) =>
      (new GAllVoteResultFieldsVarsBuilder()..update(updates)).build();

  _$GAllVoteResultFieldsVars._() : super._();

  @override
  GAllVoteResultFieldsVars rebuild(
          void Function(GAllVoteResultFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllVoteResultFieldsVarsBuilder toBuilder() =>
      new GAllVoteResultFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllVoteResultFieldsVars;
  }

  @override
  int get hashCode {
    return 1063913310;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllVoteResultFieldsVars').toString();
  }
}

class GAllVoteResultFieldsVarsBuilder
    implements
        Builder<GAllVoteResultFieldsVars, GAllVoteResultFieldsVarsBuilder> {
  _$GAllVoteResultFieldsVars? _$v;

  GAllVoteResultFieldsVarsBuilder();

  @override
  void replace(GAllVoteResultFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllVoteResultFieldsVars;
  }

  @override
  void update(void Function(GAllVoteResultFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllVoteResultFieldsVars build() {
    final _$result = _$v ?? new _$GAllVoteResultFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
