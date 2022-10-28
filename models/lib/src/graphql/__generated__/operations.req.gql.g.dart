// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListHabits> _$gListHabitsSerializer = new _$GListHabitsSerializer();
Serializer<GListHabitsByCategory> _$gListHabitsByCategorySerializer =
    new _$GListHabitsByCategorySerializer();
Serializer<GGetHabit> _$gGetHabitSerializer = new _$GGetHabitSerializer();
Serializer<GGetUser> _$gGetUserSerializer = new _$GGetUserSerializer();
Serializer<GGetSelf> _$gGetSelfSerializer = new _$GGetSelfSerializer();
Serializer<GGetComment> _$gGetCommentSerializer = new _$GGetCommentSerializer();
Serializer<GSubscribeToUser> _$gSubscribeToUserSerializer =
    new _$GSubscribeToUserSerializer();
Serializer<GOnCreateComment> _$gOnCreateCommentSerializer =
    new _$GOnCreateCommentSerializer();
Serializer<GOnUpdateComment> _$gOnUpdateCommentSerializer =
    new _$GOnUpdateCommentSerializer();
Serializer<GOnCreateHabit> _$gOnCreateHabitSerializer =
    new _$GOnCreateHabitSerializer();
Serializer<GOnUpdateHabit> _$gOnUpdateHabitSerializer =
    new _$GOnUpdateHabitSerializer();
Serializer<GCreateUser> _$gCreateUserSerializer = new _$GCreateUserSerializer();
Serializer<GCreateComment> _$gCreateCommentSerializer =
    new _$GCreateCommentSerializer();
Serializer<GCreateHabit> _$gCreateHabitSerializer =
    new _$GCreateHabitSerializer();
Serializer<GUpdateUser> _$gUpdateUserSerializer = new _$GUpdateUserSerializer();
Serializer<GUpdateHabit> _$gUpdateHabitSerializer =
    new _$GUpdateHabitSerializer();
Serializer<GDeleteHabit> _$gDeleteHabitSerializer =
    new _$GDeleteHabitSerializer();
Serializer<GVoteForHabit> _$gVoteForHabitSerializer =
    new _$GVoteForHabitSerializer();
Serializer<GSubscribeToVotes> _$gSubscribeToVotesSerializer =
    new _$GSubscribeToVotesSerializer();
Serializer<GSearchUsers> _$gSearchUsersSerializer =
    new _$GSearchUsersSerializer();
Serializer<GSearchHabits> _$gSearchHabitsSerializer =
    new _$GSearchHabitsSerializer();

class _$GListHabitsSerializer implements StructuredSerializer<GListHabits> {
  @override
  final Iterable<Type> types = const [GListHabits, _$GListHabits];
  @override
  final String wireName = 'GListHabits';

  @override
  Iterable<Object?> serialize(Serializers serializers, GListHabits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GListHabitsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GListHabits deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListHabitsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GListHabitsVars))!
              as _i3.GListHabitsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GListHabitsByCategorySerializer
    implements StructuredSerializer<GListHabitsByCategory> {
  @override
  final Iterable<Type> types = const [
    GListHabitsByCategory,
    _$GListHabitsByCategory
  ];
  @override
  final String wireName = 'GListHabitsByCategory';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListHabitsByCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GListHabitsByCategoryVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GListHabitsByCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListHabitsByCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GListHabitsByCategoryVars))!
              as _i3.GListHabitsByCategoryVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetHabitSerializer implements StructuredSerializer<GGetHabit> {
  @override
  final Iterable<Type> types = const [GGetHabit, _$GGetHabit];
  @override
  final String wireName = 'GGetHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GGetHabit deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetHabitVars))!
              as _i3.GGetHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserSerializer implements StructuredSerializer<GGetUser> {
  @override
  final Iterable<Type> types = const [GGetUser, _$GGetUser];
  @override
  final String wireName = 'GGetUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetUserVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GGetUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetUserVars))!
              as _i3.GGetUserVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSelfSerializer implements StructuredSerializer<GGetSelf> {
  @override
  final Iterable<Type> types = const [GGetSelf, _$GGetSelf];
  @override
  final String wireName = 'GGetSelf';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetSelf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetSelfVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GGetSelf deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSelfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetSelfVars))!
              as _i3.GGetSelfVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCommentSerializer implements StructuredSerializer<GGetComment> {
  @override
  final Iterable<Type> types = const [GGetComment, _$GGetComment];
  @override
  final String wireName = 'GGetComment';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetCommentVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GGetComment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetCommentVars))!
              as _i3.GGetCommentVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GSubscribeToUserSerializer
    implements StructuredSerializer<GSubscribeToUser> {
  @override
  final Iterable<Type> types = const [GSubscribeToUser, _$GSubscribeToUser];
  @override
  final String wireName = 'GSubscribeToUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSubscribeToUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSubscribeToUserVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GSubscribeToUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSubscribeToUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSubscribeToUserVars))!
              as _i3.GSubscribeToUserVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnCreateCommentSerializer
    implements StructuredSerializer<GOnCreateComment> {
  @override
  final Iterable<Type> types = const [GOnCreateComment, _$GOnCreateComment];
  @override
  final String wireName = 'GOnCreateComment';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOnCreateComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GOnCreateCommentVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GOnCreateComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnCreateCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GOnCreateCommentVars))!
              as _i3.GOnCreateCommentVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnUpdateCommentSerializer
    implements StructuredSerializer<GOnUpdateComment> {
  @override
  final Iterable<Type> types = const [GOnUpdateComment, _$GOnUpdateComment];
  @override
  final String wireName = 'GOnUpdateComment';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOnUpdateComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GOnUpdateCommentVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GOnUpdateComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnUpdateCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GOnUpdateCommentVars))!
              as _i3.GOnUpdateCommentVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnCreateHabitSerializer
    implements StructuredSerializer<GOnCreateHabit> {
  @override
  final Iterable<Type> types = const [GOnCreateHabit, _$GOnCreateHabit];
  @override
  final String wireName = 'GOnCreateHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOnCreateHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GOnCreateHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GOnCreateHabit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnCreateHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GOnCreateHabitVars))!
              as _i3.GOnCreateHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GOnUpdateHabitSerializer
    implements StructuredSerializer<GOnUpdateHabit> {
  @override
  final Iterable<Type> types = const [GOnUpdateHabit, _$GOnUpdateHabit];
  @override
  final String wireName = 'GOnUpdateHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOnUpdateHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GOnUpdateHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GOnUpdateHabit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOnUpdateHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GOnUpdateHabitVars))!
              as _i3.GOnUpdateHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserSerializer implements StructuredSerializer<GCreateUser> {
  @override
  final Iterable<Type> types = const [GCreateUser, _$GCreateUser];
  @override
  final String wireName = 'GCreateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCreateUserVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GCreateUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GCreateUserVars))!
              as _i3.GCreateUserVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentSerializer
    implements StructuredSerializer<GCreateComment> {
  @override
  final Iterable<Type> types = const [GCreateComment, _$GCreateComment];
  @override
  final String wireName = 'GCreateComment';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCreateCommentVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GCreateComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GCreateCommentVars))!
              as _i3.GCreateCommentVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHabitSerializer implements StructuredSerializer<GCreateHabit> {
  @override
  final Iterable<Type> types = const [GCreateHabit, _$GCreateHabit];
  @override
  final String wireName = 'GCreateHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCreateHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GCreateHabit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GCreateHabitVars))!
              as _i3.GCreateHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserSerializer implements StructuredSerializer<GUpdateUser> {
  @override
  final Iterable<Type> types = const [GUpdateUser, _$GUpdateUser];
  @override
  final String wireName = 'GUpdateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUpdateUserVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GUpdateUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUpdateUserVars))!
              as _i3.GUpdateUserVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateHabitSerializer implements StructuredSerializer<GUpdateHabit> {
  @override
  final Iterable<Type> types = const [GUpdateHabit, _$GUpdateHabit];
  @override
  final String wireName = 'GUpdateHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUpdateHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GUpdateHabit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUpdateHabitVars))!
              as _i3.GUpdateHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteHabitSerializer implements StructuredSerializer<GDeleteHabit> {
  @override
  final Iterable<Type> types = const [GDeleteHabit, _$GDeleteHabit];
  @override
  final String wireName = 'GDeleteHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GDeleteHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GDeleteHabit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GDeleteHabitVars))!
              as _i3.GDeleteHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GVoteForHabitSerializer implements StructuredSerializer<GVoteForHabit> {
  @override
  final Iterable<Type> types = const [GVoteForHabit, _$GVoteForHabit];
  @override
  final String wireName = 'GVoteForHabit';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVoteForHabit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GVoteForHabitVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GVoteForHabit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVoteForHabitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GVoteForHabitVars))!
              as _i3.GVoteForHabitVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GSubscribeToVotesSerializer
    implements StructuredSerializer<GSubscribeToVotes> {
  @override
  final Iterable<Type> types = const [GSubscribeToVotes, _$GSubscribeToVotes];
  @override
  final String wireName = 'GSubscribeToVotes';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSubscribeToVotes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSubscribeToVotesVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GSubscribeToVotes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSubscribeToVotesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSubscribeToVotesVars))!
              as _i3.GSubscribeToVotesVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchUsersSerializer implements StructuredSerializer<GSearchUsers> {
  @override
  final Iterable<Type> types = const [GSearchUsers, _$GSearchUsers];
  @override
  final String wireName = 'GSearchUsers';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSearchUsersVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GSearchUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSearchUsersVars))!
              as _i3.GSearchUsersVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchHabitsSerializer implements StructuredSerializer<GSearchHabits> {
  @override
  final Iterable<Type> types = const [GSearchHabits, _$GSearchHabits];
  @override
  final String wireName = 'GSearchHabits';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchHabits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSearchHabitsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GSearchHabits deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchHabitsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSearchHabitsVars))!
              as _i3.GSearchHabitsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation))! as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GListHabits extends GListHabits {
  @override
  final _i3.GListHabitsVars vars;
  @override
  final _i1.Operation operation;

  factory _$GListHabits([void Function(GListHabitsBuilder)? updates]) =>
      (new GListHabitsBuilder()..update(updates))._build();

  _$GListHabits._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GListHabits', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GListHabits', 'operation');
  }

  @override
  GListHabits rebuild(void Function(GListHabitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListHabitsBuilder toBuilder() => new GListHabitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListHabits &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListHabits')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GListHabitsBuilder implements Builder<GListHabits, GListHabitsBuilder> {
  _$GListHabits? _$v;

  _i3.GListHabitsVarsBuilder? _vars;
  _i3.GListHabitsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GListHabitsVarsBuilder();
  set vars(_i3.GListHabitsVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GListHabitsBuilder() {
    GListHabits._initializeBuilder(this);
  }

  GListHabitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListHabits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListHabits;
  }

  @override
  void update(void Function(GListHabitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListHabits build() => _build();

  _$GListHabits _build() {
    _$GListHabits _$result;
    try {
      _$result = _$v ??
          new _$GListHabits._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GListHabits', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListHabits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListHabitsByCategory extends GListHabitsByCategory {
  @override
  final _i3.GListHabitsByCategoryVars vars;
  @override
  final _i1.Operation operation;

  factory _$GListHabitsByCategory(
          [void Function(GListHabitsByCategoryBuilder)? updates]) =>
      (new GListHabitsByCategoryBuilder()..update(updates))._build();

  _$GListHabitsByCategory._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GListHabitsByCategory', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GListHabitsByCategory', 'operation');
  }

  @override
  GListHabitsByCategory rebuild(
          void Function(GListHabitsByCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListHabitsByCategoryBuilder toBuilder() =>
      new GListHabitsByCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListHabitsByCategory &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListHabitsByCategory')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GListHabitsByCategoryBuilder
    implements Builder<GListHabitsByCategory, GListHabitsByCategoryBuilder> {
  _$GListHabitsByCategory? _$v;

  _i3.GListHabitsByCategoryVarsBuilder? _vars;
  _i3.GListHabitsByCategoryVarsBuilder get vars =>
      _$this._vars ??= new _i3.GListHabitsByCategoryVarsBuilder();
  set vars(_i3.GListHabitsByCategoryVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GListHabitsByCategoryBuilder() {
    GListHabitsByCategory._initializeBuilder(this);
  }

  GListHabitsByCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListHabitsByCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListHabitsByCategory;
  }

  @override
  void update(void Function(GListHabitsByCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListHabitsByCategory build() => _build();

  _$GListHabitsByCategory _build() {
    _$GListHabitsByCategory _$result;
    try {
      _$result = _$v ??
          new _$GListHabitsByCategory._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GListHabitsByCategory', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListHabitsByCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetHabit extends GGetHabit {
  @override
  final _i3.GGetHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GGetHabit([void Function(GGetHabitBuilder)? updates]) =>
      (new GGetHabitBuilder()..update(updates))._build();

  _$GGetHabit._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GGetHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(operation, r'GGetHabit', 'operation');
  }

  @override
  GGetHabit rebuild(void Function(GGetHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetHabitBuilder toBuilder() => new GGetHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GGetHabitBuilder implements Builder<GGetHabit, GGetHabitBuilder> {
  _$GGetHabit? _$v;

  _i3.GGetHabitVarsBuilder? _vars;
  _i3.GGetHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetHabitVarsBuilder();
  set vars(_i3.GGetHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GGetHabitBuilder() {
    GGetHabit._initializeBuilder(this);
  }

  GGetHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetHabit;
  }

  @override
  void update(void Function(GGetHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetHabit build() => _build();

  _$GGetHabit _build() {
    _$GGetHabit _$result;
    try {
      _$result = _$v ??
          new _$GGetHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUser extends GGetUser {
  @override
  final _i3.GGetUserVars vars;
  @override
  final _i1.Operation operation;

  factory _$GGetUser([void Function(GGetUserBuilder)? updates]) =>
      (new GGetUserBuilder()..update(updates))._build();

  _$GGetUser._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GGetUser', 'vars');
    BuiltValueNullFieldError.checkNotNull(operation, r'GGetUser', 'operation');
  }

  @override
  GGetUser rebuild(void Function(GGetUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserBuilder toBuilder() => new GGetUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUser &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUser')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GGetUserBuilder implements Builder<GGetUser, GGetUserBuilder> {
  _$GGetUser? _$v;

  _i3.GGetUserVarsBuilder? _vars;
  _i3.GGetUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetUserVarsBuilder();
  set vars(_i3.GGetUserVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GGetUserBuilder() {
    GGetUser._initializeBuilder(this);
  }

  GGetUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUser;
  }

  @override
  void update(void Function(GGetUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUser build() => _build();

  _$GGetUser _build() {
    _$GGetUser _$result;
    try {
      _$result = _$v ??
          new _$GGetUser._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetUser', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSelf extends GGetSelf {
  @override
  final _i3.GGetSelfVars vars;
  @override
  final _i1.Operation operation;

  factory _$GGetSelf([void Function(GGetSelfBuilder)? updates]) =>
      (new GGetSelfBuilder()..update(updates))._build();

  _$GGetSelf._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GGetSelf', 'vars');
    BuiltValueNullFieldError.checkNotNull(operation, r'GGetSelf', 'operation');
  }

  @override
  GGetSelf rebuild(void Function(GGetSelfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSelfBuilder toBuilder() => new GGetSelfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSelf &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetSelf')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GGetSelfBuilder implements Builder<GGetSelf, GGetSelfBuilder> {
  _$GGetSelf? _$v;

  _i3.GGetSelfVarsBuilder? _vars;
  _i3.GGetSelfVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetSelfVarsBuilder();
  set vars(_i3.GGetSelfVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GGetSelfBuilder() {
    GGetSelf._initializeBuilder(this);
  }

  GGetSelfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSelf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSelf;
  }

  @override
  void update(void Function(GGetSelfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetSelf build() => _build();

  _$GGetSelf _build() {
    _$GGetSelf _$result;
    try {
      _$result = _$v ??
          new _$GGetSelf._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetSelf', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetSelf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetComment extends GGetComment {
  @override
  final _i3.GGetCommentVars vars;
  @override
  final _i1.Operation operation;

  factory _$GGetComment([void Function(GGetCommentBuilder)? updates]) =>
      (new GGetCommentBuilder()..update(updates))._build();

  _$GGetComment._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GGetComment', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GGetComment', 'operation');
  }

  @override
  GGetComment rebuild(void Function(GGetCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCommentBuilder toBuilder() => new GGetCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetComment &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetComment')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GGetCommentBuilder implements Builder<GGetComment, GGetCommentBuilder> {
  _$GGetComment? _$v;

  _i3.GGetCommentVarsBuilder? _vars;
  _i3.GGetCommentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetCommentVarsBuilder();
  set vars(_i3.GGetCommentVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GGetCommentBuilder() {
    GGetComment._initializeBuilder(this);
  }

  GGetCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetComment;
  }

  @override
  void update(void Function(GGetCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetComment build() => _build();

  _$GGetComment _build() {
    _$GGetComment _$result;
    try {
      _$result = _$v ??
          new _$GGetComment._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GGetComment', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSubscribeToUser extends GSubscribeToUser {
  @override
  final _i3.GSubscribeToUserVars vars;
  @override
  final _i1.Operation operation;

  factory _$GSubscribeToUser(
          [void Function(GSubscribeToUserBuilder)? updates]) =>
      (new GSubscribeToUserBuilder()..update(updates))._build();

  _$GSubscribeToUser._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GSubscribeToUser', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GSubscribeToUser', 'operation');
  }

  @override
  GSubscribeToUser rebuild(void Function(GSubscribeToUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSubscribeToUserBuilder toBuilder() =>
      new GSubscribeToUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSubscribeToUser &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSubscribeToUser')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GSubscribeToUserBuilder
    implements Builder<GSubscribeToUser, GSubscribeToUserBuilder> {
  _$GSubscribeToUser? _$v;

  _i3.GSubscribeToUserVarsBuilder? _vars;
  _i3.GSubscribeToUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSubscribeToUserVarsBuilder();
  set vars(_i3.GSubscribeToUserVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GSubscribeToUserBuilder() {
    GSubscribeToUser._initializeBuilder(this);
  }

  GSubscribeToUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSubscribeToUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSubscribeToUser;
  }

  @override
  void update(void Function(GSubscribeToUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSubscribeToUser build() => _build();

  _$GSubscribeToUser _build() {
    _$GSubscribeToUser _$result;
    try {
      _$result = _$v ??
          new _$GSubscribeToUser._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GSubscribeToUser', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSubscribeToUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnCreateComment extends GOnCreateComment {
  @override
  final _i3.GOnCreateCommentVars vars;
  @override
  final _i1.Operation operation;

  factory _$GOnCreateComment(
          [void Function(GOnCreateCommentBuilder)? updates]) =>
      (new GOnCreateCommentBuilder()..update(updates))._build();

  _$GOnCreateComment._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GOnCreateComment', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GOnCreateComment', 'operation');
  }

  @override
  GOnCreateComment rebuild(void Function(GOnCreateCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnCreateCommentBuilder toBuilder() =>
      new GOnCreateCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnCreateComment &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnCreateComment')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GOnCreateCommentBuilder
    implements Builder<GOnCreateComment, GOnCreateCommentBuilder> {
  _$GOnCreateComment? _$v;

  _i3.GOnCreateCommentVarsBuilder? _vars;
  _i3.GOnCreateCommentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GOnCreateCommentVarsBuilder();
  set vars(_i3.GOnCreateCommentVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GOnCreateCommentBuilder() {
    GOnCreateComment._initializeBuilder(this);
  }

  GOnCreateCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnCreateComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnCreateComment;
  }

  @override
  void update(void Function(GOnCreateCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnCreateComment build() => _build();

  _$GOnCreateComment _build() {
    _$GOnCreateComment _$result;
    try {
      _$result = _$v ??
          new _$GOnCreateComment._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GOnCreateComment', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnCreateComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnUpdateComment extends GOnUpdateComment {
  @override
  final _i3.GOnUpdateCommentVars vars;
  @override
  final _i1.Operation operation;

  factory _$GOnUpdateComment(
          [void Function(GOnUpdateCommentBuilder)? updates]) =>
      (new GOnUpdateCommentBuilder()..update(updates))._build();

  _$GOnUpdateComment._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GOnUpdateComment', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GOnUpdateComment', 'operation');
  }

  @override
  GOnUpdateComment rebuild(void Function(GOnUpdateCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnUpdateCommentBuilder toBuilder() =>
      new GOnUpdateCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnUpdateComment &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnUpdateComment')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GOnUpdateCommentBuilder
    implements Builder<GOnUpdateComment, GOnUpdateCommentBuilder> {
  _$GOnUpdateComment? _$v;

  _i3.GOnUpdateCommentVarsBuilder? _vars;
  _i3.GOnUpdateCommentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GOnUpdateCommentVarsBuilder();
  set vars(_i3.GOnUpdateCommentVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GOnUpdateCommentBuilder() {
    GOnUpdateComment._initializeBuilder(this);
  }

  GOnUpdateCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnUpdateComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnUpdateComment;
  }

  @override
  void update(void Function(GOnUpdateCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnUpdateComment build() => _build();

  _$GOnUpdateComment _build() {
    _$GOnUpdateComment _$result;
    try {
      _$result = _$v ??
          new _$GOnUpdateComment._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GOnUpdateComment', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnUpdateComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnCreateHabit extends GOnCreateHabit {
  @override
  final _i3.GOnCreateHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GOnCreateHabit([void Function(GOnCreateHabitBuilder)? updates]) =>
      (new GOnCreateHabitBuilder()..update(updates))._build();

  _$GOnCreateHabit._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GOnCreateHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GOnCreateHabit', 'operation');
  }

  @override
  GOnCreateHabit rebuild(void Function(GOnCreateHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnCreateHabitBuilder toBuilder() =>
      new GOnCreateHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnCreateHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnCreateHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GOnCreateHabitBuilder
    implements Builder<GOnCreateHabit, GOnCreateHabitBuilder> {
  _$GOnCreateHabit? _$v;

  _i3.GOnCreateHabitVarsBuilder? _vars;
  _i3.GOnCreateHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GOnCreateHabitVarsBuilder();
  set vars(_i3.GOnCreateHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GOnCreateHabitBuilder() {
    GOnCreateHabit._initializeBuilder(this);
  }

  GOnCreateHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnCreateHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnCreateHabit;
  }

  @override
  void update(void Function(GOnCreateHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnCreateHabit build() => _build();

  _$GOnCreateHabit _build() {
    _$GOnCreateHabit _$result;
    try {
      _$result = _$v ??
          new _$GOnCreateHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GOnCreateHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnCreateHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOnUpdateHabit extends GOnUpdateHabit {
  @override
  final _i3.GOnUpdateHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GOnUpdateHabit([void Function(GOnUpdateHabitBuilder)? updates]) =>
      (new GOnUpdateHabitBuilder()..update(updates))._build();

  _$GOnUpdateHabit._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GOnUpdateHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GOnUpdateHabit', 'operation');
  }

  @override
  GOnUpdateHabit rebuild(void Function(GOnUpdateHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOnUpdateHabitBuilder toBuilder() =>
      new GOnUpdateHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOnUpdateHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOnUpdateHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GOnUpdateHabitBuilder
    implements Builder<GOnUpdateHabit, GOnUpdateHabitBuilder> {
  _$GOnUpdateHabit? _$v;

  _i3.GOnUpdateHabitVarsBuilder? _vars;
  _i3.GOnUpdateHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GOnUpdateHabitVarsBuilder();
  set vars(_i3.GOnUpdateHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GOnUpdateHabitBuilder() {
    GOnUpdateHabit._initializeBuilder(this);
  }

  GOnUpdateHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOnUpdateHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOnUpdateHabit;
  }

  @override
  void update(void Function(GOnUpdateHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOnUpdateHabit build() => _build();

  _$GOnUpdateHabit _build() {
    _$GOnUpdateHabit _$result;
    try {
      _$result = _$v ??
          new _$GOnUpdateHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GOnUpdateHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOnUpdateHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUser extends GCreateUser {
  @override
  final _i3.GCreateUserVars vars;
  @override
  final _i1.Operation operation;

  factory _$GCreateUser([void Function(GCreateUserBuilder)? updates]) =>
      (new GCreateUserBuilder()..update(updates))._build();

  _$GCreateUser._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GCreateUser', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GCreateUser', 'operation');
  }

  @override
  GCreateUser rebuild(void Function(GCreateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserBuilder toBuilder() => new GCreateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUser &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUser')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GCreateUserBuilder implements Builder<GCreateUser, GCreateUserBuilder> {
  _$GCreateUser? _$v;

  _i3.GCreateUserVarsBuilder? _vars;
  _i3.GCreateUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreateUserVarsBuilder();
  set vars(_i3.GCreateUserVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GCreateUserBuilder() {
    GCreateUser._initializeBuilder(this);
  }

  GCreateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUser;
  }

  @override
  void update(void Function(GCreateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUser build() => _build();

  _$GCreateUser _build() {
    _$GCreateUser _$result;
    try {
      _$result = _$v ??
          new _$GCreateUser._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GCreateUser', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateComment extends GCreateComment {
  @override
  final _i3.GCreateCommentVars vars;
  @override
  final _i1.Operation operation;

  factory _$GCreateComment([void Function(GCreateCommentBuilder)? updates]) =>
      (new GCreateCommentBuilder()..update(updates))._build();

  _$GCreateComment._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GCreateComment', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GCreateComment', 'operation');
  }

  @override
  GCreateComment rebuild(void Function(GCreateCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentBuilder toBuilder() =>
      new GCreateCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateComment &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateComment')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GCreateCommentBuilder
    implements Builder<GCreateComment, GCreateCommentBuilder> {
  _$GCreateComment? _$v;

  _i3.GCreateCommentVarsBuilder? _vars;
  _i3.GCreateCommentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreateCommentVarsBuilder();
  set vars(_i3.GCreateCommentVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GCreateCommentBuilder() {
    GCreateComment._initializeBuilder(this);
  }

  GCreateCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateComment;
  }

  @override
  void update(void Function(GCreateCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateComment build() => _build();

  _$GCreateComment _build() {
    _$GCreateComment _$result;
    try {
      _$result = _$v ??
          new _$GCreateComment._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GCreateComment', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHabit extends GCreateHabit {
  @override
  final _i3.GCreateHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GCreateHabit([void Function(GCreateHabitBuilder)? updates]) =>
      (new GCreateHabitBuilder()..update(updates))._build();

  _$GCreateHabit._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GCreateHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GCreateHabit', 'operation');
  }

  @override
  GCreateHabit rebuild(void Function(GCreateHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHabitBuilder toBuilder() => new GCreateHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GCreateHabitBuilder
    implements Builder<GCreateHabit, GCreateHabitBuilder> {
  _$GCreateHabit? _$v;

  _i3.GCreateHabitVarsBuilder? _vars;
  _i3.GCreateHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreateHabitVarsBuilder();
  set vars(_i3.GCreateHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GCreateHabitBuilder() {
    GCreateHabit._initializeBuilder(this);
  }

  GCreateHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHabit;
  }

  @override
  void update(void Function(GCreateHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateHabit build() => _build();

  _$GCreateHabit _build() {
    _$GCreateHabit _$result;
    try {
      _$result = _$v ??
          new _$GCreateHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GCreateHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUser extends GUpdateUser {
  @override
  final _i3.GUpdateUserVars vars;
  @override
  final _i1.Operation operation;

  factory _$GUpdateUser([void Function(GUpdateUserBuilder)? updates]) =>
      (new GUpdateUserBuilder()..update(updates))._build();

  _$GUpdateUser._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GUpdateUser', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GUpdateUser', 'operation');
  }

  @override
  GUpdateUser rebuild(void Function(GUpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserBuilder toBuilder() => new GUpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUser &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUser')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GUpdateUserBuilder implements Builder<GUpdateUser, GUpdateUserBuilder> {
  _$GUpdateUser? _$v;

  _i3.GUpdateUserVarsBuilder? _vars;
  _i3.GUpdateUserVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUpdateUserVarsBuilder();
  set vars(_i3.GUpdateUserVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GUpdateUserBuilder() {
    GUpdateUser._initializeBuilder(this);
  }

  GUpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUser;
  }

  @override
  void update(void Function(GUpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUser build() => _build();

  _$GUpdateUser _build() {
    _$GUpdateUser _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUser._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GUpdateUser', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateHabit extends GUpdateHabit {
  @override
  final _i3.GUpdateHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GUpdateHabit([void Function(GUpdateHabitBuilder)? updates]) =>
      (new GUpdateHabitBuilder()..update(updates))._build();

  _$GUpdateHabit._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GUpdateHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GUpdateHabit', 'operation');
  }

  @override
  GUpdateHabit rebuild(void Function(GUpdateHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateHabitBuilder toBuilder() => new GUpdateHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GUpdateHabitBuilder
    implements Builder<GUpdateHabit, GUpdateHabitBuilder> {
  _$GUpdateHabit? _$v;

  _i3.GUpdateHabitVarsBuilder? _vars;
  _i3.GUpdateHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUpdateHabitVarsBuilder();
  set vars(_i3.GUpdateHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GUpdateHabitBuilder() {
    GUpdateHabit._initializeBuilder(this);
  }

  GUpdateHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateHabit;
  }

  @override
  void update(void Function(GUpdateHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateHabit build() => _build();

  _$GUpdateHabit _build() {
    _$GUpdateHabit _$result;
    try {
      _$result = _$v ??
          new _$GUpdateHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GUpdateHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteHabit extends GDeleteHabit {
  @override
  final _i3.GDeleteHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GDeleteHabit([void Function(GDeleteHabitBuilder)? updates]) =>
      (new GDeleteHabitBuilder()..update(updates))._build();

  _$GDeleteHabit._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GDeleteHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GDeleteHabit', 'operation');
  }

  @override
  GDeleteHabit rebuild(void Function(GDeleteHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteHabitBuilder toBuilder() => new GDeleteHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GDeleteHabitBuilder
    implements Builder<GDeleteHabit, GDeleteHabitBuilder> {
  _$GDeleteHabit? _$v;

  _i3.GDeleteHabitVarsBuilder? _vars;
  _i3.GDeleteHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GDeleteHabitVarsBuilder();
  set vars(_i3.GDeleteHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GDeleteHabitBuilder() {
    GDeleteHabit._initializeBuilder(this);
  }

  GDeleteHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteHabit;
  }

  @override
  void update(void Function(GDeleteHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteHabit build() => _build();

  _$GDeleteHabit _build() {
    _$GDeleteHabit _$result;
    try {
      _$result = _$v ??
          new _$GDeleteHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GDeleteHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVoteForHabit extends GVoteForHabit {
  @override
  final _i3.GVoteForHabitVars vars;
  @override
  final _i1.Operation operation;

  factory _$GVoteForHabit([void Function(GVoteForHabitBuilder)? updates]) =>
      (new GVoteForHabitBuilder()..update(updates))._build();

  _$GVoteForHabit._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GVoteForHabit', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GVoteForHabit', 'operation');
  }

  @override
  GVoteForHabit rebuild(void Function(GVoteForHabitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVoteForHabitBuilder toBuilder() => new GVoteForHabitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVoteForHabit &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVoteForHabit')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GVoteForHabitBuilder
    implements Builder<GVoteForHabit, GVoteForHabitBuilder> {
  _$GVoteForHabit? _$v;

  _i3.GVoteForHabitVarsBuilder? _vars;
  _i3.GVoteForHabitVarsBuilder get vars =>
      _$this._vars ??= new _i3.GVoteForHabitVarsBuilder();
  set vars(_i3.GVoteForHabitVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GVoteForHabitBuilder() {
    GVoteForHabit._initializeBuilder(this);
  }

  GVoteForHabitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVoteForHabit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVoteForHabit;
  }

  @override
  void update(void Function(GVoteForHabitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVoteForHabit build() => _build();

  _$GVoteForHabit _build() {
    _$GVoteForHabit _$result;
    try {
      _$result = _$v ??
          new _$GVoteForHabit._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GVoteForHabit', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVoteForHabit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSubscribeToVotes extends GSubscribeToVotes {
  @override
  final _i3.GSubscribeToVotesVars vars;
  @override
  final _i1.Operation operation;

  factory _$GSubscribeToVotes(
          [void Function(GSubscribeToVotesBuilder)? updates]) =>
      (new GSubscribeToVotesBuilder()..update(updates))._build();

  _$GSubscribeToVotes._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GSubscribeToVotes', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GSubscribeToVotes', 'operation');
  }

  @override
  GSubscribeToVotes rebuild(void Function(GSubscribeToVotesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSubscribeToVotesBuilder toBuilder() =>
      new GSubscribeToVotesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSubscribeToVotes &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSubscribeToVotes')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GSubscribeToVotesBuilder
    implements Builder<GSubscribeToVotes, GSubscribeToVotesBuilder> {
  _$GSubscribeToVotes? _$v;

  _i3.GSubscribeToVotesVarsBuilder? _vars;
  _i3.GSubscribeToVotesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSubscribeToVotesVarsBuilder();
  set vars(_i3.GSubscribeToVotesVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GSubscribeToVotesBuilder() {
    GSubscribeToVotes._initializeBuilder(this);
  }

  GSubscribeToVotesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSubscribeToVotes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSubscribeToVotes;
  }

  @override
  void update(void Function(GSubscribeToVotesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSubscribeToVotes build() => _build();

  _$GSubscribeToVotes _build() {
    _$GSubscribeToVotes _$result;
    try {
      _$result = _$v ??
          new _$GSubscribeToVotes._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GSubscribeToVotes', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSubscribeToVotes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchUsers extends GSearchUsers {
  @override
  final _i3.GSearchUsersVars vars;
  @override
  final _i1.Operation operation;

  factory _$GSearchUsers([void Function(GSearchUsersBuilder)? updates]) =>
      (new GSearchUsersBuilder()..update(updates))._build();

  _$GSearchUsers._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GSearchUsers', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GSearchUsers', 'operation');
  }

  @override
  GSearchUsers rebuild(void Function(GSearchUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchUsersBuilder toBuilder() => new GSearchUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchUsers &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchUsers')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GSearchUsersBuilder
    implements Builder<GSearchUsers, GSearchUsersBuilder> {
  _$GSearchUsers? _$v;

  _i3.GSearchUsersVarsBuilder? _vars;
  _i3.GSearchUsersVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSearchUsersVarsBuilder();
  set vars(_i3.GSearchUsersVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GSearchUsersBuilder() {
    GSearchUsers._initializeBuilder(this);
  }

  GSearchUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchUsers;
  }

  @override
  void update(void Function(GSearchUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchUsers build() => _build();

  _$GSearchUsers _build() {
    _$GSearchUsers _$result;
    try {
      _$result = _$v ??
          new _$GSearchUsers._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GSearchUsers', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchHabits extends GSearchHabits {
  @override
  final _i3.GSearchHabitsVars vars;
  @override
  final _i1.Operation operation;

  factory _$GSearchHabits([void Function(GSearchHabitsBuilder)? updates]) =>
      (new GSearchHabitsBuilder()..update(updates))._build();

  _$GSearchHabits._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GSearchHabits', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GSearchHabits', 'operation');
  }

  @override
  GSearchHabits rebuild(void Function(GSearchHabitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchHabitsBuilder toBuilder() => new GSearchHabitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchHabits &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchHabits')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GSearchHabitsBuilder
    implements Builder<GSearchHabits, GSearchHabitsBuilder> {
  _$GSearchHabits? _$v;

  _i3.GSearchHabitsVarsBuilder? _vars;
  _i3.GSearchHabitsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSearchHabitsVarsBuilder();
  set vars(_i3.GSearchHabitsVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GSearchHabitsBuilder() {
    GSearchHabits._initializeBuilder(this);
  }

  GSearchHabitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchHabits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchHabits;
  }

  @override
  void update(void Function(GSearchHabitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchHabits build() => _build();

  _$GSearchHabits _build() {
    _$GSearchHabits _$result;
    try {
      _$result = _$v ??
          new _$GSearchHabits._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GSearchHabits', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchHabits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
