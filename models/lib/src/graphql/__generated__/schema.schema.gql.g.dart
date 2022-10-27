// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GAccessLevel _$gAccessLevelguest = const GAccessLevel._('guest');
const GAccessLevel _$gAccessLevelprivate = const GAccessLevel._('private');
const GAccessLevel _$gAccessLevelprotected = const GAccessLevel._('protected');

GAccessLevel _$gAccessLevelValueOf(String name) {
  switch (name) {
    case 'guest':
      return _$gAccessLevelguest;
    case 'private':
      return _$gAccessLevelprivate;
    case 'protected':
      return _$gAccessLevelprotected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GAccessLevel> _$gAccessLevelValues =
    new BuiltSet<GAccessLevel>(const <GAccessLevel>[
  _$gAccessLevelguest,
  _$gAccessLevelprivate,
  _$gAccessLevelprotected,
]);

const GCategory _$gCategoryHealth = const GCategory._('Health');
const GCategory _$gCategoryFinance = const GCategory._('Finance');
const GCategory _$gCategoryProductivity = const GCategory._('Productivity');
const GCategory _$gCategoryRelationships = const GCategory._('Relationships');

GCategory _$gCategoryValueOf(String name) {
  switch (name) {
    case 'Health':
      return _$gCategoryHealth;
    case 'Finance':
      return _$gCategoryFinance;
    case 'Productivity':
      return _$gCategoryProductivity;
    case 'Relationships':
      return _$gCategoryRelationships;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GCategory> _$gCategoryValues =
    new BuiltSet<GCategory>(const <GCategory>[
  _$gCategoryHealth,
  _$gCategoryFinance,
  _$gCategoryProductivity,
  _$gCategoryRelationships,
]);

const GModelAttributeTypes _$gModelAttributeTypesbinary =
    const GModelAttributeTypes._('binary');
const GModelAttributeTypes _$gModelAttributeTypesbinarySet =
    const GModelAttributeTypes._('binarySet');
const GModelAttributeTypes _$gModelAttributeTypesGbool =
    const GModelAttributeTypes._('Gbool');
const GModelAttributeTypes _$gModelAttributeTypeslist =
    const GModelAttributeTypes._('list');
const GModelAttributeTypes _$gModelAttributeTypesmap =
    const GModelAttributeTypes._('map');
const GModelAttributeTypes _$gModelAttributeTypesnumber =
    const GModelAttributeTypes._('number');
const GModelAttributeTypes _$gModelAttributeTypesnumberSet =
    const GModelAttributeTypes._('numberSet');
const GModelAttributeTypes _$gModelAttributeTypesstring =
    const GModelAttributeTypes._('string');
const GModelAttributeTypes _$gModelAttributeTypesstringSet =
    const GModelAttributeTypes._('stringSet');
const GModelAttributeTypes _$gModelAttributeTypesG_null =
    const GModelAttributeTypes._('G_null');

GModelAttributeTypes _$gModelAttributeTypesValueOf(String name) {
  switch (name) {
    case 'binary':
      return _$gModelAttributeTypesbinary;
    case 'binarySet':
      return _$gModelAttributeTypesbinarySet;
    case 'Gbool':
      return _$gModelAttributeTypesGbool;
    case 'list':
      return _$gModelAttributeTypeslist;
    case 'map':
      return _$gModelAttributeTypesmap;
    case 'number':
      return _$gModelAttributeTypesnumber;
    case 'numberSet':
      return _$gModelAttributeTypesnumberSet;
    case 'string':
      return _$gModelAttributeTypesstring;
    case 'stringSet':
      return _$gModelAttributeTypesstringSet;
    case 'G_null':
      return _$gModelAttributeTypesG_null;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GModelAttributeTypes> _$gModelAttributeTypesValues =
    new BuiltSet<GModelAttributeTypes>(const <GModelAttributeTypes>[
  _$gModelAttributeTypesbinary,
  _$gModelAttributeTypesbinarySet,
  _$gModelAttributeTypesGbool,
  _$gModelAttributeTypeslist,
  _$gModelAttributeTypesmap,
  _$gModelAttributeTypesnumber,
  _$gModelAttributeTypesnumberSet,
  _$gModelAttributeTypesstring,
  _$gModelAttributeTypesstringSet,
  _$gModelAttributeTypesG_null,
]);

const GModelSortDirection _$gModelSortDirectionASC =
    const GModelSortDirection._('ASC');
const GModelSortDirection _$gModelSortDirectionDESC =
    const GModelSortDirection._('DESC');

GModelSortDirection _$gModelSortDirectionValueOf(String name) {
  switch (name) {
    case 'ASC':
      return _$gModelSortDirectionASC;
    case 'DESC':
      return _$gModelSortDirectionDESC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GModelSortDirection> _$gModelSortDirectionValues =
    new BuiltSet<GModelSortDirection>(const <GModelSortDirection>[
  _$gModelSortDirectionASC,
  _$gModelSortDirectionDESC,
]);

const GVoteType _$gVoteTypeupvote = const GVoteType._('upvote');
const GVoteType _$gVoteTypedownvote = const GVoteType._('downvote');
const GVoteType _$gVoteTyperemoveUpvote = const GVoteType._('removeUpvote');
const GVoteType _$gVoteTyperemoveDownvote = const GVoteType._('removeDownvote');

GVoteType _$gVoteTypeValueOf(String name) {
  switch (name) {
    case 'upvote':
      return _$gVoteTypeupvote;
    case 'downvote':
      return _$gVoteTypedownvote;
    case 'removeUpvote':
      return _$gVoteTyperemoveUpvote;
    case 'removeDownvote':
      return _$gVoteTyperemoveDownvote;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GVoteType> _$gVoteTypeValues =
    new BuiltSet<GVoteType>(const <GVoteType>[
  _$gVoteTypeupvote,
  _$gVoteTypedownvote,
  _$gVoteTyperemoveUpvote,
  _$gVoteTyperemoveDownvote,
]);

Serializer<GAccessLevel> _$gAccessLevelSerializer =
    new _$GAccessLevelSerializer();
Serializer<GCategory> _$gCategorySerializer = new _$GCategorySerializer();
Serializer<GCreateCommentInput> _$gCreateCommentInputSerializer =
    new _$GCreateCommentInputSerializer();
Serializer<GCreateHabitInput> _$gCreateHabitInputSerializer =
    new _$GCreateHabitInputSerializer();
Serializer<GCreateUserInput> _$gCreateUserInputSerializer =
    new _$GCreateUserInputSerializer();
Serializer<GDeleteCommentInput> _$gDeleteCommentInputSerializer =
    new _$GDeleteCommentInputSerializer();
Serializer<GDeleteHabitInput> _$gDeleteHabitInputSerializer =
    new _$GDeleteHabitInputSerializer();
Serializer<GDeleteUserInput> _$gDeleteUserInputSerializer =
    new _$GDeleteUserInputSerializer();
Serializer<GModelAttributeTypes> _$gModelAttributeTypesSerializer =
    new _$GModelAttributeTypesSerializer();
Serializer<GModelBooleanInput> _$gModelBooleanInputSerializer =
    new _$GModelBooleanInputSerializer();
Serializer<GModelCategoryInput> _$gModelCategoryInputSerializer =
    new _$GModelCategoryInputSerializer();
Serializer<GModelCommentConditionInput>
    _$gModelCommentConditionInputSerializer =
    new _$GModelCommentConditionInputSerializer();
Serializer<GModelCommentFilterInput> _$gModelCommentFilterInputSerializer =
    new _$GModelCommentFilterInputSerializer();
Serializer<GModelFloatInput> _$gModelFloatInputSerializer =
    new _$GModelFloatInputSerializer();
Serializer<GModelHabitConditionInput> _$gModelHabitConditionInputSerializer =
    new _$GModelHabitConditionInputSerializer();
Serializer<GModelHabitFilterInput> _$gModelHabitFilterInputSerializer =
    new _$GModelHabitFilterInputSerializer();
Serializer<GModelIDInput> _$gModelIDInputSerializer =
    new _$GModelIDInputSerializer();
Serializer<GModelIntInput> _$gModelIntInputSerializer =
    new _$GModelIntInputSerializer();
Serializer<GModelIntKeyConditionInput> _$gModelIntKeyConditionInputSerializer =
    new _$GModelIntKeyConditionInputSerializer();
Serializer<GModelSizeInput> _$gModelSizeInputSerializer =
    new _$GModelSizeInputSerializer();
Serializer<GModelSortDirection> _$gModelSortDirectionSerializer =
    new _$GModelSortDirectionSerializer();
Serializer<GModelStringInput> _$gModelStringInputSerializer =
    new _$GModelStringInputSerializer();
Serializer<GModelUserConditionInput> _$gModelUserConditionInputSerializer =
    new _$GModelUserConditionInputSerializer();
Serializer<GModelUserFilterInput> _$gModelUserFilterInputSerializer =
    new _$GModelUserFilterInputSerializer();
Serializer<GS3ObjectInput> _$gS3ObjectInputSerializer =
    new _$GS3ObjectInputSerializer();
Serializer<GUpdateCommentInput> _$gUpdateCommentInputSerializer =
    new _$GUpdateCommentInputSerializer();
Serializer<GUpdateHabitInput> _$gUpdateHabitInputSerializer =
    new _$GUpdateHabitInputSerializer();
Serializer<GUpdateUserInput> _$gUpdateUserInputSerializer =
    new _$GUpdateUserInputSerializer();
Serializer<GVoteType> _$gVoteTypeSerializer = new _$GVoteTypeSerializer();

class _$GAccessLevelSerializer implements PrimitiveSerializer<GAccessLevel> {
  @override
  final Iterable<Type> types = const <Type>[GAccessLevel];
  @override
  final String wireName = 'GAccessLevel';

  @override
  Object serialize(Serializers serializers, GAccessLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GAccessLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GAccessLevel.valueOf(serialized as String);
}

class _$GCategorySerializer implements PrimitiveSerializer<GCategory> {
  @override
  final Iterable<Type> types = const <Type>[GCategory];
  @override
  final String wireName = 'GCategory';

  @override
  Object serialize(Serializers serializers, GCategory object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GCategory deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GCategory.valueOf(serialized as String);
}

class _$GCreateCommentInputSerializer
    implements StructuredSerializer<GCreateCommentInput> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentInput,
    _$GCreateCommentInput
  ];
  @override
  final String wireName = 'GCreateCommentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.habitId;
    if (value != null) {
      result
        ..add('habitId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateCommentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'habitId':
          result.habitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHabitInputSerializer
    implements StructuredSerializer<GCreateHabitInput> {
  @override
  final Iterable<Type> types = const [GCreateHabitInput, _$GCreateHabitInput];
  @override
  final String wireName = 'GCreateHabitInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateHabitInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tagline',
      serializers.serialize(object.tagline,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(GCategory)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ups;
    if (value != null) {
      result
        ..add('ups')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.downs;
    if (value != null) {
      result
        ..add('downs')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateHabitInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHabitInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(GCategory))! as GCategory;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ups':
          result.ups = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'downs':
          result.downs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserInputSerializer
    implements StructuredSerializer<GCreateUserInput> {
  @override
  final Iterable<Type> types = const [GCreateUserInput, _$GCreateUserInput];
  @override
  final String wireName = 'GCreateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserInput object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GS3ObjectInput)));
    }
    value = object.upvotedHabits;
    if (value != null) {
      result
        ..add('upvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.downvotedHabits;
    if (value != null) {
      result
        ..add('downvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GCreateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'displayUsername':
          result.displayUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GS3ObjectInput))!
              as GS3ObjectInput);
          break;
        case 'upvotedHabits':
          result.upvotedHabits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'downvotedHabits':
          result.downvotedHabits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteCommentInputSerializer
    implements StructuredSerializer<GDeleteCommentInput> {
  @override
  final Iterable<Type> types = const [
    GDeleteCommentInput,
    _$GDeleteCommentInput
  ];
  @override
  final String wireName = 'GDeleteCommentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteCommentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteCommentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteCommentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteHabitInputSerializer
    implements StructuredSerializer<GDeleteHabitInput> {
  @override
  final Iterable<Type> types = const [GDeleteHabitInput, _$GDeleteHabitInput];
  @override
  final String wireName = 'GDeleteHabitInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteHabitInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteHabitInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteHabitInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteUserInputSerializer
    implements StructuredSerializer<GDeleteUserInput> {
  @override
  final Iterable<Type> types = const [GDeleteUserInput, _$GDeleteUserInput];
  @override
  final String wireName = 'GDeleteUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GModelAttributeTypesSerializer
    implements PrimitiveSerializer<GModelAttributeTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'Gbool': 'bool',
    'G_null': '_null',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bool': 'Gbool',
    '_null': 'G_null',
  };

  @override
  final Iterable<Type> types = const <Type>[GModelAttributeTypes];
  @override
  final String wireName = 'GModelAttributeTypes';

  @override
  Object serialize(Serializers serializers, GModelAttributeTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GModelAttributeTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GModelAttributeTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GModelBooleanInputSerializer
    implements StructuredSerializer<GModelBooleanInput> {
  @override
  final Iterable<Type> types = const [GModelBooleanInput, _$GModelBooleanInput];
  @override
  final String wireName = 'GModelBooleanInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelBooleanInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.attributeExists;
    if (value != null) {
      result
        ..add('attributeExists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.attributeType;
    if (value != null) {
      result
        ..add('attributeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelAttributeTypes)));
    }
    return result;
  }

  @override
  GModelBooleanInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelBooleanInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'attributeExists':
          result.attributeExists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'attributeType':
          result.attributeType = serializers.deserialize(value,
                  specifiedType: const FullType(GModelAttributeTypes))
              as GModelAttributeTypes?;
          break;
      }
    }

    return result.build();
  }
}

class _$GModelCategoryInputSerializer
    implements StructuredSerializer<GModelCategoryInput> {
  @override
  final Iterable<Type> types = const [
    GModelCategoryInput,
    _$GModelCategoryInput
  ];
  @override
  final String wireName = 'GModelCategoryInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelCategoryInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCategory)));
    }
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCategory)));
    }
    return result;
  }

  @override
  GModelCategoryInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelCategoryInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(GCategory)) as GCategory?;
          break;
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(GCategory)) as GCategory?;
          break;
      }
    }

    return result.build();
  }
}

class _$GModelCommentConditionInputSerializer
    implements StructuredSerializer<GModelCommentConditionInput> {
  @override
  final Iterable<Type> types = const [
    GModelCommentConditionInput,
    _$GModelCommentConditionInput
  ];
  @override
  final String wireName = 'GModelCommentConditionInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelCommentConditionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.habitId;
    if (value != null) {
      result
        ..add('habitId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GModelCommentConditionInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GModelCommentConditionInput)])));
    }
    value = object.not;
    if (value != null) {
      result
        ..add('not')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelCommentConditionInput)));
    }
    return result;
  }

  @override
  GModelCommentConditionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelCommentConditionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'habitId':
          result.habitId.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelCommentConditionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelCommentConditionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'not':
          result.not.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelCommentConditionInput))!
              as GModelCommentConditionInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelCommentFilterInputSerializer
    implements StructuredSerializer<GModelCommentFilterInput> {
  @override
  final Iterable<Type> types = const [
    GModelCommentFilterInput,
    _$GModelCommentFilterInput
  ];
  @override
  final String wireName = 'GModelCommentFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelCommentFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.habitId;
    if (value != null) {
      result
        ..add('habitId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelCommentFilterInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelCommentFilterInput)])));
    }
    value = object.not;
    if (value != null) {
      result
        ..add('not')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelCommentFilterInput)));
    }
    return result;
  }

  @override
  GModelCommentFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelCommentFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'habitId':
          result.habitId.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelCommentFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelCommentFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'not':
          result.not.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelCommentFilterInput))!
              as GModelCommentFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelFloatInputSerializer
    implements StructuredSerializer<GModelFloatInput> {
  @override
  final Iterable<Type> types = const [GModelFloatInput, _$GModelFloatInput];
  @override
  final String wireName = 'GModelFloatInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GModelFloatInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.attributeExists;
    if (value != null) {
      result
        ..add('attributeExists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.attributeType;
    if (value != null) {
      result
        ..add('attributeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelAttributeTypes)));
    }
    return result;
  }

  @override
  GModelFloatInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelFloatInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'attributeExists':
          result.attributeExists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'attributeType':
          result.attributeType = serializers.deserialize(value,
                  specifiedType: const FullType(GModelAttributeTypes))
              as GModelAttributeTypes?;
          break;
      }
    }

    return result.build();
  }
}

class _$GModelHabitConditionInputSerializer
    implements StructuredSerializer<GModelHabitConditionInput> {
  @override
  final Iterable<Type> types = const [
    GModelHabitConditionInput,
    _$GModelHabitConditionInput
  ];
  @override
  final String wireName = 'GModelHabitConditionInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelHabitConditionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tagline;
    if (value != null) {
      result
        ..add('tagline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelCategoryInput)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.ups;
    if (value != null) {
      result
        ..add('ups')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIntInput)));
    }
    value = object.downs;
    if (value != null) {
      result
        ..add('downs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIntInput)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelHabitConditionInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelHabitConditionInput)])));
    }
    value = object.not;
    if (value != null) {
      result
        ..add('not')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelHabitConditionInput)));
    }
    return result;
  }

  @override
  GModelHabitConditionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelHabitConditionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tagline':
          result.tagline.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelCategoryInput))!
              as GModelCategoryInput);
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'ups':
          result.ups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelIntInput))!
              as GModelIntInput);
          break;
        case 'downs':
          result.downs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelIntInput))!
              as GModelIntInput);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelHabitConditionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelHabitConditionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'not':
          result.not.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelHabitConditionInput))!
              as GModelHabitConditionInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelHabitFilterInputSerializer
    implements StructuredSerializer<GModelHabitFilterInput> {
  @override
  final Iterable<Type> types = const [
    GModelHabitFilterInput,
    _$GModelHabitFilterInput
  ];
  @override
  final String wireName = 'GModelHabitFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelHabitFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.tagline;
    if (value != null) {
      result
        ..add('tagline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelCategoryInput)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.ups;
    if (value != null) {
      result
        ..add('ups')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIntInput)));
    }
    value = object.downs;
    if (value != null) {
      result
        ..add('downs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIntInput)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelHabitFilterInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelHabitFilterInput)])));
    }
    value = object.not;
    if (value != null) {
      result
        ..add('not')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelHabitFilterInput)));
    }
    return result;
  }

  @override
  GModelHabitFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelHabitFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'tagline':
          result.tagline.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelCategoryInput))!
              as GModelCategoryInput);
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'ups':
          result.ups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelIntInput))!
              as GModelIntInput);
          break;
        case 'downs':
          result.downs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelIntInput))!
              as GModelIntInput);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelHabitFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelHabitFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'not':
          result.not.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelHabitFilterInput))!
              as GModelHabitFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelIDInputSerializer implements StructuredSerializer<GModelIDInput> {
  @override
  final Iterable<Type> types = const [GModelIDInput, _$GModelIDInput];
  @override
  final String wireName = 'GModelIDInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GModelIDInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notContains;
    if (value != null) {
      result
        ..add('notContains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.beginsWith;
    if (value != null) {
      result
        ..add('beginsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attributeExists;
    if (value != null) {
      result
        ..add('attributeExists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.attributeType;
    if (value != null) {
      result
        ..add('attributeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelAttributeTypes)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelSizeInput)));
    }
    return result;
  }

  @override
  GModelIDInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelIDInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notContains':
          result.notContains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'beginsWith':
          result.beginsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attributeExists':
          result.attributeExists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'attributeType':
          result.attributeType = serializers.deserialize(value,
                  specifiedType: const FullType(GModelAttributeTypes))
              as GModelAttributeTypes?;
          break;
        case 'size':
          result.size.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelSizeInput))!
              as GModelSizeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelIntInputSerializer
    implements StructuredSerializer<GModelIntInput> {
  @override
  final Iterable<Type> types = const [GModelIntInput, _$GModelIntInput];
  @override
  final String wireName = 'GModelIntInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GModelIntInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.attributeExists;
    if (value != null) {
      result
        ..add('attributeExists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.attributeType;
    if (value != null) {
      result
        ..add('attributeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelAttributeTypes)));
    }
    return result;
  }

  @override
  GModelIntInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelIntInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'attributeExists':
          result.attributeExists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'attributeType':
          result.attributeType = serializers.deserialize(value,
                  specifiedType: const FullType(GModelAttributeTypes))
              as GModelAttributeTypes?;
          break;
      }
    }

    return result.build();
  }
}

class _$GModelIntKeyConditionInputSerializer
    implements StructuredSerializer<GModelIntKeyConditionInput> {
  @override
  final Iterable<Type> types = const [
    GModelIntKeyConditionInput,
    _$GModelIntKeyConditionInput
  ];
  @override
  final String wireName = 'GModelIntKeyConditionInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelIntKeyConditionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  GModelIntKeyConditionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelIntKeyConditionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelSizeInputSerializer
    implements StructuredSerializer<GModelSizeInput> {
  @override
  final Iterable<Type> types = const [GModelSizeInput, _$GModelSizeInput];
  @override
  final String wireName = 'GModelSizeInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GModelSizeInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  GModelSizeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelSizeInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelSortDirectionSerializer
    implements PrimitiveSerializer<GModelSortDirection> {
  @override
  final Iterable<Type> types = const <Type>[GModelSortDirection];
  @override
  final String wireName = 'GModelSortDirection';

  @override
  Object serialize(Serializers serializers, GModelSortDirection object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GModelSortDirection deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GModelSortDirection.valueOf(serialized as String);
}

class _$GModelStringInputSerializer
    implements StructuredSerializer<GModelStringInput> {
  @override
  final Iterable<Type> types = const [GModelStringInput, _$GModelStringInput];
  @override
  final String wireName = 'GModelStringInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GModelStringInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notContains;
    if (value != null) {
      result
        ..add('notContains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.beginsWith;
    if (value != null) {
      result
        ..add('beginsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attributeExists;
    if (value != null) {
      result
        ..add('attributeExists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.attributeType;
    if (value != null) {
      result
        ..add('attributeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelAttributeTypes)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelSizeInput)));
    }
    return result;
  }

  @override
  GModelStringInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelStringInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notContains':
          result.notContains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'beginsWith':
          result.beginsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attributeExists':
          result.attributeExists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'attributeType':
          result.attributeType = serializers.deserialize(value,
                  specifiedType: const FullType(GModelAttributeTypes))
              as GModelAttributeTypes?;
          break;
        case 'size':
          result.size.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelSizeInput))!
              as GModelSizeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelUserConditionInputSerializer
    implements StructuredSerializer<GModelUserConditionInput> {
  @override
  final Iterable<Type> types = const [
    GModelUserConditionInput,
    _$GModelUserConditionInput
  ];
  @override
  final String wireName = 'GModelUserConditionInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelUserConditionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayUsername;
    if (value != null) {
      result
        ..add('displayUsername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.upvotedHabits;
    if (value != null) {
      result
        ..add('upvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.downvotedHabits;
    if (value != null) {
      result
        ..add('downvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelUserConditionInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelUserConditionInput)])));
    }
    value = object.not;
    if (value != null) {
      result
        ..add('not')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelUserConditionInput)));
    }
    return result;
  }

  @override
  GModelUserConditionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelUserConditionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'displayUsername':
          result.displayUsername.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'upvotedHabits':
          result.upvotedHabits.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'downvotedHabits':
          result.downvotedHabits.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelUserConditionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelUserConditionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'not':
          result.not.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelUserConditionInput))!
              as GModelUserConditionInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GModelUserFilterInputSerializer
    implements StructuredSerializer<GModelUserFilterInput> {
  @override
  final Iterable<Type> types = const [
    GModelUserFilterInput,
    _$GModelUserFilterInput
  ];
  @override
  final String wireName = 'GModelUserFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModelUserFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.displayUsername;
    if (value != null) {
      result
        ..add('displayUsername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelStringInput)));
    }
    value = object.upvotedHabits;
    if (value != null) {
      result
        ..add('upvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.downvotedHabits;
    if (value != null) {
      result
        ..add('downvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelIDInput)));
    }
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelUserFilterInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GModelUserFilterInput)])));
    }
    value = object.not;
    if (value != null) {
      result
        ..add('not')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GModelUserFilterInput)));
    }
    return result;
  }

  @override
  GModelUserFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModelUserFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'displayUsername':
          result.displayUsername.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelStringInput))!
              as GModelStringInput);
          break;
        case 'upvotedHabits':
          result.upvotedHabits.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'downvotedHabits':
          result.downvotedHabits.replace(serializers.deserialize(value,
              specifiedType: const FullType(GModelIDInput))! as GModelIDInput);
          break;
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelUserFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GModelUserFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'not':
          result.not.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GModelUserFilterInput))!
              as GModelUserFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GS3ObjectInputSerializer
    implements StructuredSerializer<GS3ObjectInput> {
  @override
  final Iterable<Type> types = const [GS3ObjectInput, _$GS3ObjectInput];
  @override
  final String wireName = 'GS3ObjectInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GS3ObjectInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bucket',
      serializers.serialize(object.bucket,
          specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.cognitoId;
    if (value != null) {
      result
        ..add('cognitoId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessLevel;
    if (value != null) {
      result
        ..add('accessLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAccessLevel)));
    }
    return result;
  }

  @override
  GS3ObjectInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GS3ObjectInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bucket':
          result.bucket = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cognitoId':
          result.cognitoId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessLevel':
          result.accessLevel = serializers.deserialize(value,
              specifiedType: const FullType(GAccessLevel)) as GAccessLevel?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateCommentInputSerializer
    implements StructuredSerializer<GUpdateCommentInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateCommentInput,
    _$GUpdateCommentInput
  ];
  @override
  final String wireName = 'GUpdateCommentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateCommentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.habitId;
    if (value != null) {
      result
        ..add('habitId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateCommentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateCommentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'habitId':
          result.habitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateHabitInputSerializer
    implements StructuredSerializer<GUpdateHabitInput> {
  @override
  final Iterable<Type> types = const [GUpdateHabitInput, _$GUpdateHabitInput];
  @override
  final String wireName = 'GUpdateHabitInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateHabitInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.tagline;
    if (value != null) {
      result
        ..add('tagline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCategory)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ups;
    if (value != null) {
      result
        ..add('ups')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.downs;
    if (value != null) {
      result
        ..add('downs')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateHabitInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateHabitInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(GCategory)) as GCategory?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ups':
          result.ups = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'downs':
          result.downs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserInputSerializer
    implements StructuredSerializer<GUpdateUserInput> {
  @override
  final Iterable<Type> types = const [GUpdateUserInput, _$GUpdateUserInput];
  @override
  final String wireName = 'GUpdateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserInput object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GS3ObjectInput)));
    }
    value = object.upvotedHabits;
    if (value != null) {
      result
        ..add('upvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.downvotedHabits;
    if (value != null) {
      result
        ..add('downvotedHabits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GUpdateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'displayUsername':
          result.displayUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GS3ObjectInput))!
              as GS3ObjectInput);
          break;
        case 'upvotedHabits':
          result.upvotedHabits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'downvotedHabits':
          result.downvotedHabits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVoteTypeSerializer implements PrimitiveSerializer<GVoteType> {
  @override
  final Iterable<Type> types = const <Type>[GVoteType];
  @override
  final String wireName = 'GVoteType';

  @override
  Object serialize(Serializers serializers, GVoteType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GVoteType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GVoteType.valueOf(serialized as String);
}

class _$GAWSDateTime extends GAWSDateTime {
  @override
  final String value;

  factory _$GAWSDateTime([void Function(GAWSDateTimeBuilder)? updates]) =>
      (new GAWSDateTimeBuilder()..update(updates))._build();

  _$GAWSDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GAWSDateTime', 'value');
  }

  @override
  GAWSDateTime rebuild(void Function(GAWSDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAWSDateTimeBuilder toBuilder() => new GAWSDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAWSDateTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAWSDateTime')..add('value', value))
        .toString();
  }
}

class GAWSDateTimeBuilder
    implements Builder<GAWSDateTime, GAWSDateTimeBuilder> {
  _$GAWSDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GAWSDateTimeBuilder();

  GAWSDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAWSDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAWSDateTime;
  }

  @override
  void update(void Function(GAWSDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAWSDateTime build() => _build();

  _$GAWSDateTime _build() {
    final _$result = _$v ??
        new _$GAWSDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GAWSDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentInput extends GCreateCommentInput {
  @override
  final String? id;
  @override
  final String? habitId;
  @override
  final String? owner;
  @override
  final String comment;

  factory _$GCreateCommentInput(
          [void Function(GCreateCommentInputBuilder)? updates]) =>
      (new GCreateCommentInputBuilder()..update(updates))._build();

  _$GCreateCommentInput._(
      {this.id, this.habitId, this.owner, required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        comment, r'GCreateCommentInput', 'comment');
  }

  @override
  GCreateCommentInput rebuild(
          void Function(GCreateCommentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentInputBuilder toBuilder() =>
      new GCreateCommentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentInput &&
        id == other.id &&
        habitId == other.habitId &&
        owner == other.owner &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), habitId.hashCode), owner.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCommentInput')
          ..add('id', id)
          ..add('habitId', habitId)
          ..add('owner', owner)
          ..add('comment', comment))
        .toString();
  }
}

class GCreateCommentInputBuilder
    implements Builder<GCreateCommentInput, GCreateCommentInputBuilder> {
  _$GCreateCommentInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _habitId;
  String? get habitId => _$this._habitId;
  set habitId(String? habitId) => _$this._habitId = habitId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GCreateCommentInputBuilder();

  GCreateCommentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _habitId = $v.habitId;
      _owner = $v.owner;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentInput;
  }

  @override
  void update(void Function(GCreateCommentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentInput build() => _build();

  _$GCreateCommentInput _build() {
    final _$result = _$v ??
        new _$GCreateCommentInput._(
            id: id,
            habitId: habitId,
            owner: owner,
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'GCreateCommentInput', 'comment'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHabitInput extends GCreateHabitInput {
  @override
  final String? id;
  @override
  final String tagline;
  @override
  final GCategory category;
  @override
  final String? details;
  @override
  final int? ups;
  @override
  final int? downs;
  @override
  final String? owner;

  factory _$GCreateHabitInput(
          [void Function(GCreateHabitInputBuilder)? updates]) =>
      (new GCreateHabitInputBuilder()..update(updates))._build();

  _$GCreateHabitInput._(
      {this.id,
      required this.tagline,
      required this.category,
      this.details,
      this.ups,
      this.downs,
      this.owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tagline, r'GCreateHabitInput', 'tagline');
    BuiltValueNullFieldError.checkNotNull(
        category, r'GCreateHabitInput', 'category');
  }

  @override
  GCreateHabitInput rebuild(void Function(GCreateHabitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHabitInputBuilder toBuilder() =>
      new GCreateHabitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHabitInput &&
        id == other.id &&
        tagline == other.tagline &&
        category == other.category &&
        details == other.details &&
        ups == other.ups &&
        downs == other.downs &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), tagline.hashCode),
                        category.hashCode),
                    details.hashCode),
                ups.hashCode),
            downs.hashCode),
        owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateHabitInput')
          ..add('id', id)
          ..add('tagline', tagline)
          ..add('category', category)
          ..add('details', details)
          ..add('ups', ups)
          ..add('downs', downs)
          ..add('owner', owner))
        .toString();
  }
}

class GCreateHabitInputBuilder
    implements Builder<GCreateHabitInput, GCreateHabitInputBuilder> {
  _$GCreateHabitInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tagline;
  String? get tagline => _$this._tagline;
  set tagline(String? tagline) => _$this._tagline = tagline;

  GCategory? _category;
  GCategory? get category => _$this._category;
  set category(GCategory? category) => _$this._category = category;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  int? _ups;
  int? get ups => _$this._ups;
  set ups(int? ups) => _$this._ups = ups;

  int? _downs;
  int? get downs => _$this._downs;
  set downs(int? downs) => _$this._downs = downs;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  GCreateHabitInputBuilder();

  GCreateHabitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tagline = $v.tagline;
      _category = $v.category;
      _details = $v.details;
      _ups = $v.ups;
      _downs = $v.downs;
      _owner = $v.owner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHabitInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHabitInput;
  }

  @override
  void update(void Function(GCreateHabitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateHabitInput build() => _build();

  _$GCreateHabitInput _build() {
    final _$result = _$v ??
        new _$GCreateHabitInput._(
            id: id,
            tagline: BuiltValueNullFieldError.checkNotNull(
                tagline, r'GCreateHabitInput', 'tagline'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'GCreateHabitInput', 'category'),
            details: details,
            ups: ups,
            downs: downs,
            owner: owner);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserInput extends GCreateUserInput {
  @override
  final String username;
  @override
  final String? displayUsername;
  @override
  final String? name;
  @override
  final GS3ObjectInput? avatar;
  @override
  final BuiltList<String>? upvotedHabits;
  @override
  final BuiltList<String>? downvotedHabits;

  factory _$GCreateUserInput(
          [void Function(GCreateUserInputBuilder)? updates]) =>
      (new GCreateUserInputBuilder()..update(updates))._build();

  _$GCreateUserInput._(
      {required this.username,
      this.displayUsername,
      this.name,
      this.avatar,
      this.upvotedHabits,
      this.downvotedHabits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GCreateUserInput', 'username');
  }

  @override
  GCreateUserInput rebuild(void Function(GCreateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserInputBuilder toBuilder() =>
      new GCreateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserInput &&
        username == other.username &&
        displayUsername == other.displayUsername &&
        name == other.name &&
        avatar == other.avatar &&
        upvotedHabits == other.upvotedHabits &&
        downvotedHabits == other.downvotedHabits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, username.hashCode), displayUsername.hashCode),
                    name.hashCode),
                avatar.hashCode),
            upvotedHabits.hashCode),
        downvotedHabits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserInput')
          ..add('username', username)
          ..add('displayUsername', displayUsername)
          ..add('name', name)
          ..add('avatar', avatar)
          ..add('upvotedHabits', upvotedHabits)
          ..add('downvotedHabits', downvotedHabits))
        .toString();
  }
}

class GCreateUserInputBuilder
    implements Builder<GCreateUserInput, GCreateUserInputBuilder> {
  _$GCreateUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _displayUsername;
  String? get displayUsername => _$this._displayUsername;
  set displayUsername(String? displayUsername) =>
      _$this._displayUsername = displayUsername;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GS3ObjectInputBuilder? _avatar;
  GS3ObjectInputBuilder get avatar =>
      _$this._avatar ??= new GS3ObjectInputBuilder();
  set avatar(GS3ObjectInputBuilder? avatar) => _$this._avatar = avatar;

  ListBuilder<String>? _upvotedHabits;
  ListBuilder<String> get upvotedHabits =>
      _$this._upvotedHabits ??= new ListBuilder<String>();
  set upvotedHabits(ListBuilder<String>? upvotedHabits) =>
      _$this._upvotedHabits = upvotedHabits;

  ListBuilder<String>? _downvotedHabits;
  ListBuilder<String> get downvotedHabits =>
      _$this._downvotedHabits ??= new ListBuilder<String>();
  set downvotedHabits(ListBuilder<String>? downvotedHabits) =>
      _$this._downvotedHabits = downvotedHabits;

  GCreateUserInputBuilder();

  GCreateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _displayUsername = $v.displayUsername;
      _name = $v.name;
      _avatar = $v.avatar?.toBuilder();
      _upvotedHabits = $v.upvotedHabits?.toBuilder();
      _downvotedHabits = $v.downvotedHabits?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserInput;
  }

  @override
  void update(void Function(GCreateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserInput build() => _build();

  _$GCreateUserInput _build() {
    _$GCreateUserInput _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserInput._(
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GCreateUserInput', 'username'),
              displayUsername: displayUsername,
              name: name,
              avatar: _avatar?.build(),
              upvotedHabits: _upvotedHabits?.build(),
              downvotedHabits: _downvotedHabits?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
        _$failedField = 'upvotedHabits';
        _upvotedHabits?.build();
        _$failedField = 'downvotedHabits';
        _downvotedHabits?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteCommentInput extends GDeleteCommentInput {
  @override
  final String id;

  factory _$GDeleteCommentInput(
          [void Function(GDeleteCommentInputBuilder)? updates]) =>
      (new GDeleteCommentInputBuilder()..update(updates))._build();

  _$GDeleteCommentInput._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GDeleteCommentInput', 'id');
  }

  @override
  GDeleteCommentInput rebuild(
          void Function(GDeleteCommentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCommentInputBuilder toBuilder() =>
      new GDeleteCommentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCommentInput && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteCommentInput')..add('id', id))
        .toString();
  }
}

class GDeleteCommentInputBuilder
    implements Builder<GDeleteCommentInput, GDeleteCommentInputBuilder> {
  _$GDeleteCommentInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDeleteCommentInputBuilder();

  GDeleteCommentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCommentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteCommentInput;
  }

  @override
  void update(void Function(GDeleteCommentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCommentInput build() => _build();

  _$GDeleteCommentInput _build() {
    final _$result = _$v ??
        new _$GDeleteCommentInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDeleteCommentInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteHabitInput extends GDeleteHabitInput {
  @override
  final String id;

  factory _$GDeleteHabitInput(
          [void Function(GDeleteHabitInputBuilder)? updates]) =>
      (new GDeleteHabitInputBuilder()..update(updates))._build();

  _$GDeleteHabitInput._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GDeleteHabitInput', 'id');
  }

  @override
  GDeleteHabitInput rebuild(void Function(GDeleteHabitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteHabitInputBuilder toBuilder() =>
      new GDeleteHabitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteHabitInput && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteHabitInput')..add('id', id))
        .toString();
  }
}

class GDeleteHabitInputBuilder
    implements Builder<GDeleteHabitInput, GDeleteHabitInputBuilder> {
  _$GDeleteHabitInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDeleteHabitInputBuilder();

  GDeleteHabitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteHabitInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteHabitInput;
  }

  @override
  void update(void Function(GDeleteHabitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteHabitInput build() => _build();

  _$GDeleteHabitInput _build() {
    final _$result = _$v ??
        new _$GDeleteHabitInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDeleteHabitInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteUserInput extends GDeleteUserInput {
  @override
  final String username;

  factory _$GDeleteUserInput(
          [void Function(GDeleteUserInputBuilder)? updates]) =>
      (new GDeleteUserInputBuilder()..update(updates))._build();

  _$GDeleteUserInput._({required this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GDeleteUserInput', 'username');
  }

  @override
  GDeleteUserInput rebuild(void Function(GDeleteUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteUserInputBuilder toBuilder() =>
      new GDeleteUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteUserInput && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteUserInput')
          ..add('username', username))
        .toString();
  }
}

class GDeleteUserInputBuilder
    implements Builder<GDeleteUserInput, GDeleteUserInputBuilder> {
  _$GDeleteUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GDeleteUserInputBuilder();

  GDeleteUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteUserInput;
  }

  @override
  void update(void Function(GDeleteUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteUserInput build() => _build();

  _$GDeleteUserInput _build() {
    final _$result = _$v ??
        new _$GDeleteUserInput._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GDeleteUserInput', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GModelBooleanInput extends GModelBooleanInput {
  @override
  final bool? ne;
  @override
  final bool? eq;
  @override
  final bool? attributeExists;
  @override
  final GModelAttributeTypes? attributeType;

  factory _$GModelBooleanInput(
          [void Function(GModelBooleanInputBuilder)? updates]) =>
      (new GModelBooleanInputBuilder()..update(updates))._build();

  _$GModelBooleanInput._(
      {this.ne, this.eq, this.attributeExists, this.attributeType})
      : super._();

  @override
  GModelBooleanInput rebuild(
          void Function(GModelBooleanInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelBooleanInputBuilder toBuilder() =>
      new GModelBooleanInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelBooleanInput &&
        ne == other.ne &&
        eq == other.eq &&
        attributeExists == other.attributeExists &&
        attributeType == other.attributeType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, ne.hashCode), eq.hashCode), attributeExists.hashCode),
        attributeType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelBooleanInput')
          ..add('ne', ne)
          ..add('eq', eq)
          ..add('attributeExists', attributeExists)
          ..add('attributeType', attributeType))
        .toString();
  }
}

class GModelBooleanInputBuilder
    implements Builder<GModelBooleanInput, GModelBooleanInputBuilder> {
  _$GModelBooleanInput? _$v;

  bool? _ne;
  bool? get ne => _$this._ne;
  set ne(bool? ne) => _$this._ne = ne;

  bool? _eq;
  bool? get eq => _$this._eq;
  set eq(bool? eq) => _$this._eq = eq;

  bool? _attributeExists;
  bool? get attributeExists => _$this._attributeExists;
  set attributeExists(bool? attributeExists) =>
      _$this._attributeExists = attributeExists;

  GModelAttributeTypes? _attributeType;
  GModelAttributeTypes? get attributeType => _$this._attributeType;
  set attributeType(GModelAttributeTypes? attributeType) =>
      _$this._attributeType = attributeType;

  GModelBooleanInputBuilder();

  GModelBooleanInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ne = $v.ne;
      _eq = $v.eq;
      _attributeExists = $v.attributeExists;
      _attributeType = $v.attributeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelBooleanInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelBooleanInput;
  }

  @override
  void update(void Function(GModelBooleanInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelBooleanInput build() => _build();

  _$GModelBooleanInput _build() {
    final _$result = _$v ??
        new _$GModelBooleanInput._(
            ne: ne,
            eq: eq,
            attributeExists: attributeExists,
            attributeType: attributeType);
    replace(_$result);
    return _$result;
  }
}

class _$GModelCategoryInput extends GModelCategoryInput {
  @override
  final GCategory? eq;
  @override
  final GCategory? ne;

  factory _$GModelCategoryInput(
          [void Function(GModelCategoryInputBuilder)? updates]) =>
      (new GModelCategoryInputBuilder()..update(updates))._build();

  _$GModelCategoryInput._({this.eq, this.ne}) : super._();

  @override
  GModelCategoryInput rebuild(
          void Function(GModelCategoryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelCategoryInputBuilder toBuilder() =>
      new GModelCategoryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelCategoryInput && eq == other.eq && ne == other.ne;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, eq.hashCode), ne.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelCategoryInput')
          ..add('eq', eq)
          ..add('ne', ne))
        .toString();
  }
}

class GModelCategoryInputBuilder
    implements Builder<GModelCategoryInput, GModelCategoryInputBuilder> {
  _$GModelCategoryInput? _$v;

  GCategory? _eq;
  GCategory? get eq => _$this._eq;
  set eq(GCategory? eq) => _$this._eq = eq;

  GCategory? _ne;
  GCategory? get ne => _$this._ne;
  set ne(GCategory? ne) => _$this._ne = ne;

  GModelCategoryInputBuilder();

  GModelCategoryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eq = $v.eq;
      _ne = $v.ne;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelCategoryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelCategoryInput;
  }

  @override
  void update(void Function(GModelCategoryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelCategoryInput build() => _build();

  _$GModelCategoryInput _build() {
    final _$result = _$v ?? new _$GModelCategoryInput._(eq: eq, ne: ne);
    replace(_$result);
    return _$result;
  }
}

class _$GModelCommentConditionInput extends GModelCommentConditionInput {
  @override
  final GModelIDInput? habitId;
  @override
  final GModelStringInput? owner;
  @override
  final GModelStringInput? comment;
  @override
  final BuiltList<GModelCommentConditionInput>? and;
  @override
  final BuiltList<GModelCommentConditionInput>? or;
  @override
  final GModelCommentConditionInput? not;

  factory _$GModelCommentConditionInput(
          [void Function(GModelCommentConditionInputBuilder)? updates]) =>
      (new GModelCommentConditionInputBuilder()..update(updates))._build();

  _$GModelCommentConditionInput._(
      {this.habitId, this.owner, this.comment, this.and, this.or, this.not})
      : super._();

  @override
  GModelCommentConditionInput rebuild(
          void Function(GModelCommentConditionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelCommentConditionInputBuilder toBuilder() =>
      new GModelCommentConditionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelCommentConditionInput &&
        habitId == other.habitId &&
        owner == other.owner &&
        comment == other.comment &&
        and == other.and &&
        or == other.or &&
        not == other.not;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, habitId.hashCode), owner.hashCode),
                    comment.hashCode),
                and.hashCode),
            or.hashCode),
        not.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelCommentConditionInput')
          ..add('habitId', habitId)
          ..add('owner', owner)
          ..add('comment', comment)
          ..add('and', and)
          ..add('or', or)
          ..add('not', not))
        .toString();
  }
}

class GModelCommentConditionInputBuilder
    implements
        Builder<GModelCommentConditionInput,
            GModelCommentConditionInputBuilder> {
  _$GModelCommentConditionInput? _$v;

  GModelIDInputBuilder? _habitId;
  GModelIDInputBuilder get habitId =>
      _$this._habitId ??= new GModelIDInputBuilder();
  set habitId(GModelIDInputBuilder? habitId) => _$this._habitId = habitId;

  GModelStringInputBuilder? _owner;
  GModelStringInputBuilder get owner =>
      _$this._owner ??= new GModelStringInputBuilder();
  set owner(GModelStringInputBuilder? owner) => _$this._owner = owner;

  GModelStringInputBuilder? _comment;
  GModelStringInputBuilder get comment =>
      _$this._comment ??= new GModelStringInputBuilder();
  set comment(GModelStringInputBuilder? comment) => _$this._comment = comment;

  ListBuilder<GModelCommentConditionInput>? _and;
  ListBuilder<GModelCommentConditionInput> get and =>
      _$this._and ??= new ListBuilder<GModelCommentConditionInput>();
  set and(ListBuilder<GModelCommentConditionInput>? and) => _$this._and = and;

  ListBuilder<GModelCommentConditionInput>? _or;
  ListBuilder<GModelCommentConditionInput> get or =>
      _$this._or ??= new ListBuilder<GModelCommentConditionInput>();
  set or(ListBuilder<GModelCommentConditionInput>? or) => _$this._or = or;

  GModelCommentConditionInputBuilder? _not;
  GModelCommentConditionInputBuilder get not =>
      _$this._not ??= new GModelCommentConditionInputBuilder();
  set not(GModelCommentConditionInputBuilder? not) => _$this._not = not;

  GModelCommentConditionInputBuilder();

  GModelCommentConditionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _habitId = $v.habitId?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _comment = $v.comment?.toBuilder();
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _not = $v.not?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelCommentConditionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelCommentConditionInput;
  }

  @override
  void update(void Function(GModelCommentConditionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelCommentConditionInput build() => _build();

  _$GModelCommentConditionInput _build() {
    _$GModelCommentConditionInput _$result;
    try {
      _$result = _$v ??
          new _$GModelCommentConditionInput._(
              habitId: _habitId?.build(),
              owner: _owner?.build(),
              comment: _comment?.build(),
              and: _and?.build(),
              or: _or?.build(),
              not: _not?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'habitId';
        _habitId?.build();
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'comment';
        _comment?.build();
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'not';
        _not?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelCommentConditionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelCommentFilterInput extends GModelCommentFilterInput {
  @override
  final GModelIDInput? id;
  @override
  final GModelIDInput? habitId;
  @override
  final GModelStringInput? owner;
  @override
  final GModelStringInput? comment;
  @override
  final BuiltList<GModelCommentFilterInput>? and;
  @override
  final BuiltList<GModelCommentFilterInput>? or;
  @override
  final GModelCommentFilterInput? not;

  factory _$GModelCommentFilterInput(
          [void Function(GModelCommentFilterInputBuilder)? updates]) =>
      (new GModelCommentFilterInputBuilder()..update(updates))._build();

  _$GModelCommentFilterInput._(
      {this.id,
      this.habitId,
      this.owner,
      this.comment,
      this.and,
      this.or,
      this.not})
      : super._();

  @override
  GModelCommentFilterInput rebuild(
          void Function(GModelCommentFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelCommentFilterInputBuilder toBuilder() =>
      new GModelCommentFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelCommentFilterInput &&
        id == other.id &&
        habitId == other.habitId &&
        owner == other.owner &&
        comment == other.comment &&
        and == other.and &&
        or == other.or &&
        not == other.not;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), habitId.hashCode),
                        owner.hashCode),
                    comment.hashCode),
                and.hashCode),
            or.hashCode),
        not.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelCommentFilterInput')
          ..add('id', id)
          ..add('habitId', habitId)
          ..add('owner', owner)
          ..add('comment', comment)
          ..add('and', and)
          ..add('or', or)
          ..add('not', not))
        .toString();
  }
}

class GModelCommentFilterInputBuilder
    implements
        Builder<GModelCommentFilterInput, GModelCommentFilterInputBuilder> {
  _$GModelCommentFilterInput? _$v;

  GModelIDInputBuilder? _id;
  GModelIDInputBuilder get id => _$this._id ??= new GModelIDInputBuilder();
  set id(GModelIDInputBuilder? id) => _$this._id = id;

  GModelIDInputBuilder? _habitId;
  GModelIDInputBuilder get habitId =>
      _$this._habitId ??= new GModelIDInputBuilder();
  set habitId(GModelIDInputBuilder? habitId) => _$this._habitId = habitId;

  GModelStringInputBuilder? _owner;
  GModelStringInputBuilder get owner =>
      _$this._owner ??= new GModelStringInputBuilder();
  set owner(GModelStringInputBuilder? owner) => _$this._owner = owner;

  GModelStringInputBuilder? _comment;
  GModelStringInputBuilder get comment =>
      _$this._comment ??= new GModelStringInputBuilder();
  set comment(GModelStringInputBuilder? comment) => _$this._comment = comment;

  ListBuilder<GModelCommentFilterInput>? _and;
  ListBuilder<GModelCommentFilterInput> get and =>
      _$this._and ??= new ListBuilder<GModelCommentFilterInput>();
  set and(ListBuilder<GModelCommentFilterInput>? and) => _$this._and = and;

  ListBuilder<GModelCommentFilterInput>? _or;
  ListBuilder<GModelCommentFilterInput> get or =>
      _$this._or ??= new ListBuilder<GModelCommentFilterInput>();
  set or(ListBuilder<GModelCommentFilterInput>? or) => _$this._or = or;

  GModelCommentFilterInputBuilder? _not;
  GModelCommentFilterInputBuilder get not =>
      _$this._not ??= new GModelCommentFilterInputBuilder();
  set not(GModelCommentFilterInputBuilder? not) => _$this._not = not;

  GModelCommentFilterInputBuilder();

  GModelCommentFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _habitId = $v.habitId?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _comment = $v.comment?.toBuilder();
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _not = $v.not?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelCommentFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelCommentFilterInput;
  }

  @override
  void update(void Function(GModelCommentFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelCommentFilterInput build() => _build();

  _$GModelCommentFilterInput _build() {
    _$GModelCommentFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GModelCommentFilterInput._(
              id: _id?.build(),
              habitId: _habitId?.build(),
              owner: _owner?.build(),
              comment: _comment?.build(),
              and: _and?.build(),
              or: _or?.build(),
              not: _not?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
        _$failedField = 'habitId';
        _habitId?.build();
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'comment';
        _comment?.build();
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'not';
        _not?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelCommentFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelFloatInput extends GModelFloatInput {
  @override
  final double? ne;
  @override
  final double? eq;
  @override
  final double? le;
  @override
  final double? lt;
  @override
  final double? ge;
  @override
  final double? gt;
  @override
  final BuiltList<double>? between;
  @override
  final bool? attributeExists;
  @override
  final GModelAttributeTypes? attributeType;

  factory _$GModelFloatInput(
          [void Function(GModelFloatInputBuilder)? updates]) =>
      (new GModelFloatInputBuilder()..update(updates))._build();

  _$GModelFloatInput._(
      {this.ne,
      this.eq,
      this.le,
      this.lt,
      this.ge,
      this.gt,
      this.between,
      this.attributeExists,
      this.attributeType})
      : super._();

  @override
  GModelFloatInput rebuild(void Function(GModelFloatInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelFloatInputBuilder toBuilder() =>
      new GModelFloatInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelFloatInput &&
        ne == other.ne &&
        eq == other.eq &&
        le == other.le &&
        lt == other.lt &&
        ge == other.ge &&
        gt == other.gt &&
        between == other.between &&
        attributeExists == other.attributeExists &&
        attributeType == other.attributeType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, ne.hashCode), eq.hashCode),
                                le.hashCode),
                            lt.hashCode),
                        ge.hashCode),
                    gt.hashCode),
                between.hashCode),
            attributeExists.hashCode),
        attributeType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelFloatInput')
          ..add('ne', ne)
          ..add('eq', eq)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('between', between)
          ..add('attributeExists', attributeExists)
          ..add('attributeType', attributeType))
        .toString();
  }
}

class GModelFloatInputBuilder
    implements Builder<GModelFloatInput, GModelFloatInputBuilder> {
  _$GModelFloatInput? _$v;

  double? _ne;
  double? get ne => _$this._ne;
  set ne(double? ne) => _$this._ne = ne;

  double? _eq;
  double? get eq => _$this._eq;
  set eq(double? eq) => _$this._eq = eq;

  double? _le;
  double? get le => _$this._le;
  set le(double? le) => _$this._le = le;

  double? _lt;
  double? get lt => _$this._lt;
  set lt(double? lt) => _$this._lt = lt;

  double? _ge;
  double? get ge => _$this._ge;
  set ge(double? ge) => _$this._ge = ge;

  double? _gt;
  double? get gt => _$this._gt;
  set gt(double? gt) => _$this._gt = gt;

  ListBuilder<double>? _between;
  ListBuilder<double> get between =>
      _$this._between ??= new ListBuilder<double>();
  set between(ListBuilder<double>? between) => _$this._between = between;

  bool? _attributeExists;
  bool? get attributeExists => _$this._attributeExists;
  set attributeExists(bool? attributeExists) =>
      _$this._attributeExists = attributeExists;

  GModelAttributeTypes? _attributeType;
  GModelAttributeTypes? get attributeType => _$this._attributeType;
  set attributeType(GModelAttributeTypes? attributeType) =>
      _$this._attributeType = attributeType;

  GModelFloatInputBuilder();

  GModelFloatInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ne = $v.ne;
      _eq = $v.eq;
      _le = $v.le;
      _lt = $v.lt;
      _ge = $v.ge;
      _gt = $v.gt;
      _between = $v.between?.toBuilder();
      _attributeExists = $v.attributeExists;
      _attributeType = $v.attributeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelFloatInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelFloatInput;
  }

  @override
  void update(void Function(GModelFloatInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelFloatInput build() => _build();

  _$GModelFloatInput _build() {
    _$GModelFloatInput _$result;
    try {
      _$result = _$v ??
          new _$GModelFloatInput._(
              ne: ne,
              eq: eq,
              le: le,
              lt: lt,
              ge: ge,
              gt: gt,
              between: _between?.build(),
              attributeExists: attributeExists,
              attributeType: attributeType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelFloatInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelHabitConditionInput extends GModelHabitConditionInput {
  @override
  final GModelStringInput? tagline;
  @override
  final GModelCategoryInput? category;
  @override
  final GModelStringInput? details;
  @override
  final GModelIntInput? ups;
  @override
  final GModelIntInput? downs;
  @override
  final GModelStringInput? owner;
  @override
  final BuiltList<GModelHabitConditionInput>? and;
  @override
  final BuiltList<GModelHabitConditionInput>? or;
  @override
  final GModelHabitConditionInput? not;

  factory _$GModelHabitConditionInput(
          [void Function(GModelHabitConditionInputBuilder)? updates]) =>
      (new GModelHabitConditionInputBuilder()..update(updates))._build();

  _$GModelHabitConditionInput._(
      {this.tagline,
      this.category,
      this.details,
      this.ups,
      this.downs,
      this.owner,
      this.and,
      this.or,
      this.not})
      : super._();

  @override
  GModelHabitConditionInput rebuild(
          void Function(GModelHabitConditionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelHabitConditionInputBuilder toBuilder() =>
      new GModelHabitConditionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelHabitConditionInput &&
        tagline == other.tagline &&
        category == other.category &&
        details == other.details &&
        ups == other.ups &&
        downs == other.downs &&
        owner == other.owner &&
        and == other.and &&
        or == other.or &&
        not == other.not;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, tagline.hashCode),
                                    category.hashCode),
                                details.hashCode),
                            ups.hashCode),
                        downs.hashCode),
                    owner.hashCode),
                and.hashCode),
            or.hashCode),
        not.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelHabitConditionInput')
          ..add('tagline', tagline)
          ..add('category', category)
          ..add('details', details)
          ..add('ups', ups)
          ..add('downs', downs)
          ..add('owner', owner)
          ..add('and', and)
          ..add('or', or)
          ..add('not', not))
        .toString();
  }
}

class GModelHabitConditionInputBuilder
    implements
        Builder<GModelHabitConditionInput, GModelHabitConditionInputBuilder> {
  _$GModelHabitConditionInput? _$v;

  GModelStringInputBuilder? _tagline;
  GModelStringInputBuilder get tagline =>
      _$this._tagline ??= new GModelStringInputBuilder();
  set tagline(GModelStringInputBuilder? tagline) => _$this._tagline = tagline;

  GModelCategoryInputBuilder? _category;
  GModelCategoryInputBuilder get category =>
      _$this._category ??= new GModelCategoryInputBuilder();
  set category(GModelCategoryInputBuilder? category) =>
      _$this._category = category;

  GModelStringInputBuilder? _details;
  GModelStringInputBuilder get details =>
      _$this._details ??= new GModelStringInputBuilder();
  set details(GModelStringInputBuilder? details) => _$this._details = details;

  GModelIntInputBuilder? _ups;
  GModelIntInputBuilder get ups => _$this._ups ??= new GModelIntInputBuilder();
  set ups(GModelIntInputBuilder? ups) => _$this._ups = ups;

  GModelIntInputBuilder? _downs;
  GModelIntInputBuilder get downs =>
      _$this._downs ??= new GModelIntInputBuilder();
  set downs(GModelIntInputBuilder? downs) => _$this._downs = downs;

  GModelStringInputBuilder? _owner;
  GModelStringInputBuilder get owner =>
      _$this._owner ??= new GModelStringInputBuilder();
  set owner(GModelStringInputBuilder? owner) => _$this._owner = owner;

  ListBuilder<GModelHabitConditionInput>? _and;
  ListBuilder<GModelHabitConditionInput> get and =>
      _$this._and ??= new ListBuilder<GModelHabitConditionInput>();
  set and(ListBuilder<GModelHabitConditionInput>? and) => _$this._and = and;

  ListBuilder<GModelHabitConditionInput>? _or;
  ListBuilder<GModelHabitConditionInput> get or =>
      _$this._or ??= new ListBuilder<GModelHabitConditionInput>();
  set or(ListBuilder<GModelHabitConditionInput>? or) => _$this._or = or;

  GModelHabitConditionInputBuilder? _not;
  GModelHabitConditionInputBuilder get not =>
      _$this._not ??= new GModelHabitConditionInputBuilder();
  set not(GModelHabitConditionInputBuilder? not) => _$this._not = not;

  GModelHabitConditionInputBuilder();

  GModelHabitConditionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagline = $v.tagline?.toBuilder();
      _category = $v.category?.toBuilder();
      _details = $v.details?.toBuilder();
      _ups = $v.ups?.toBuilder();
      _downs = $v.downs?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _not = $v.not?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelHabitConditionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelHabitConditionInput;
  }

  @override
  void update(void Function(GModelHabitConditionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelHabitConditionInput build() => _build();

  _$GModelHabitConditionInput _build() {
    _$GModelHabitConditionInput _$result;
    try {
      _$result = _$v ??
          new _$GModelHabitConditionInput._(
              tagline: _tagline?.build(),
              category: _category?.build(),
              details: _details?.build(),
              ups: _ups?.build(),
              downs: _downs?.build(),
              owner: _owner?.build(),
              and: _and?.build(),
              or: _or?.build(),
              not: _not?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagline';
        _tagline?.build();
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'details';
        _details?.build();
        _$failedField = 'ups';
        _ups?.build();
        _$failedField = 'downs';
        _downs?.build();
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'not';
        _not?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelHabitConditionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelHabitFilterInput extends GModelHabitFilterInput {
  @override
  final GModelIDInput? id;
  @override
  final GModelStringInput? tagline;
  @override
  final GModelCategoryInput? category;
  @override
  final GModelStringInput? details;
  @override
  final GModelIntInput? ups;
  @override
  final GModelIntInput? downs;
  @override
  final GModelStringInput? owner;
  @override
  final BuiltList<GModelHabitFilterInput>? and;
  @override
  final BuiltList<GModelHabitFilterInput>? or;
  @override
  final GModelHabitFilterInput? not;

  factory _$GModelHabitFilterInput(
          [void Function(GModelHabitFilterInputBuilder)? updates]) =>
      (new GModelHabitFilterInputBuilder()..update(updates))._build();

  _$GModelHabitFilterInput._(
      {this.id,
      this.tagline,
      this.category,
      this.details,
      this.ups,
      this.downs,
      this.owner,
      this.and,
      this.or,
      this.not})
      : super._();

  @override
  GModelHabitFilterInput rebuild(
          void Function(GModelHabitFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelHabitFilterInputBuilder toBuilder() =>
      new GModelHabitFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelHabitFilterInput &&
        id == other.id &&
        tagline == other.tagline &&
        category == other.category &&
        details == other.details &&
        ups == other.ups &&
        downs == other.downs &&
        owner == other.owner &&
        and == other.and &&
        or == other.or &&
        not == other.not;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), tagline.hashCode),
                                    category.hashCode),
                                details.hashCode),
                            ups.hashCode),
                        downs.hashCode),
                    owner.hashCode),
                and.hashCode),
            or.hashCode),
        not.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelHabitFilterInput')
          ..add('id', id)
          ..add('tagline', tagline)
          ..add('category', category)
          ..add('details', details)
          ..add('ups', ups)
          ..add('downs', downs)
          ..add('owner', owner)
          ..add('and', and)
          ..add('or', or)
          ..add('not', not))
        .toString();
  }
}

class GModelHabitFilterInputBuilder
    implements Builder<GModelHabitFilterInput, GModelHabitFilterInputBuilder> {
  _$GModelHabitFilterInput? _$v;

  GModelIDInputBuilder? _id;
  GModelIDInputBuilder get id => _$this._id ??= new GModelIDInputBuilder();
  set id(GModelIDInputBuilder? id) => _$this._id = id;

  GModelStringInputBuilder? _tagline;
  GModelStringInputBuilder get tagline =>
      _$this._tagline ??= new GModelStringInputBuilder();
  set tagline(GModelStringInputBuilder? tagline) => _$this._tagline = tagline;

  GModelCategoryInputBuilder? _category;
  GModelCategoryInputBuilder get category =>
      _$this._category ??= new GModelCategoryInputBuilder();
  set category(GModelCategoryInputBuilder? category) =>
      _$this._category = category;

  GModelStringInputBuilder? _details;
  GModelStringInputBuilder get details =>
      _$this._details ??= new GModelStringInputBuilder();
  set details(GModelStringInputBuilder? details) => _$this._details = details;

  GModelIntInputBuilder? _ups;
  GModelIntInputBuilder get ups => _$this._ups ??= new GModelIntInputBuilder();
  set ups(GModelIntInputBuilder? ups) => _$this._ups = ups;

  GModelIntInputBuilder? _downs;
  GModelIntInputBuilder get downs =>
      _$this._downs ??= new GModelIntInputBuilder();
  set downs(GModelIntInputBuilder? downs) => _$this._downs = downs;

  GModelStringInputBuilder? _owner;
  GModelStringInputBuilder get owner =>
      _$this._owner ??= new GModelStringInputBuilder();
  set owner(GModelStringInputBuilder? owner) => _$this._owner = owner;

  ListBuilder<GModelHabitFilterInput>? _and;
  ListBuilder<GModelHabitFilterInput> get and =>
      _$this._and ??= new ListBuilder<GModelHabitFilterInput>();
  set and(ListBuilder<GModelHabitFilterInput>? and) => _$this._and = and;

  ListBuilder<GModelHabitFilterInput>? _or;
  ListBuilder<GModelHabitFilterInput> get or =>
      _$this._or ??= new ListBuilder<GModelHabitFilterInput>();
  set or(ListBuilder<GModelHabitFilterInput>? or) => _$this._or = or;

  GModelHabitFilterInputBuilder? _not;
  GModelHabitFilterInputBuilder get not =>
      _$this._not ??= new GModelHabitFilterInputBuilder();
  set not(GModelHabitFilterInputBuilder? not) => _$this._not = not;

  GModelHabitFilterInputBuilder();

  GModelHabitFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _tagline = $v.tagline?.toBuilder();
      _category = $v.category?.toBuilder();
      _details = $v.details?.toBuilder();
      _ups = $v.ups?.toBuilder();
      _downs = $v.downs?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _not = $v.not?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelHabitFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelHabitFilterInput;
  }

  @override
  void update(void Function(GModelHabitFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelHabitFilterInput build() => _build();

  _$GModelHabitFilterInput _build() {
    _$GModelHabitFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GModelHabitFilterInput._(
              id: _id?.build(),
              tagline: _tagline?.build(),
              category: _category?.build(),
              details: _details?.build(),
              ups: _ups?.build(),
              downs: _downs?.build(),
              owner: _owner?.build(),
              and: _and?.build(),
              or: _or?.build(),
              not: _not?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
        _$failedField = 'tagline';
        _tagline?.build();
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'details';
        _details?.build();
        _$failedField = 'ups';
        _ups?.build();
        _$failedField = 'downs';
        _downs?.build();
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'not';
        _not?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelHabitFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelIDInput extends GModelIDInput {
  @override
  final String? ne;
  @override
  final String? eq;
  @override
  final String? le;
  @override
  final String? lt;
  @override
  final String? ge;
  @override
  final String? gt;
  @override
  final String? contains;
  @override
  final String? notContains;
  @override
  final BuiltList<String>? between;
  @override
  final String? beginsWith;
  @override
  final bool? attributeExists;
  @override
  final GModelAttributeTypes? attributeType;
  @override
  final GModelSizeInput? size;

  factory _$GModelIDInput([void Function(GModelIDInputBuilder)? updates]) =>
      (new GModelIDInputBuilder()..update(updates))._build();

  _$GModelIDInput._(
      {this.ne,
      this.eq,
      this.le,
      this.lt,
      this.ge,
      this.gt,
      this.contains,
      this.notContains,
      this.between,
      this.beginsWith,
      this.attributeExists,
      this.attributeType,
      this.size})
      : super._();

  @override
  GModelIDInput rebuild(void Function(GModelIDInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelIDInputBuilder toBuilder() => new GModelIDInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelIDInput &&
        ne == other.ne &&
        eq == other.eq &&
        le == other.le &&
        lt == other.lt &&
        ge == other.ge &&
        gt == other.gt &&
        contains == other.contains &&
        notContains == other.notContains &&
        between == other.between &&
        beginsWith == other.beginsWith &&
        attributeExists == other.attributeExists &&
        attributeType == other.attributeType &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, ne.hashCode),
                                                    eq.hashCode),
                                                le.hashCode),
                                            lt.hashCode),
                                        ge.hashCode),
                                    gt.hashCode),
                                contains.hashCode),
                            notContains.hashCode),
                        between.hashCode),
                    beginsWith.hashCode),
                attributeExists.hashCode),
            attributeType.hashCode),
        size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelIDInput')
          ..add('ne', ne)
          ..add('eq', eq)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('contains', contains)
          ..add('notContains', notContains)
          ..add('between', between)
          ..add('beginsWith', beginsWith)
          ..add('attributeExists', attributeExists)
          ..add('attributeType', attributeType)
          ..add('size', size))
        .toString();
  }
}

class GModelIDInputBuilder
    implements Builder<GModelIDInput, GModelIDInputBuilder> {
  _$GModelIDInput? _$v;

  String? _ne;
  String? get ne => _$this._ne;
  set ne(String? ne) => _$this._ne = ne;

  String? _eq;
  String? get eq => _$this._eq;
  set eq(String? eq) => _$this._eq = eq;

  String? _le;
  String? get le => _$this._le;
  set le(String? le) => _$this._le = le;

  String? _lt;
  String? get lt => _$this._lt;
  set lt(String? lt) => _$this._lt = lt;

  String? _ge;
  String? get ge => _$this._ge;
  set ge(String? ge) => _$this._ge = ge;

  String? _gt;
  String? get gt => _$this._gt;
  set gt(String? gt) => _$this._gt = gt;

  String? _contains;
  String? get contains => _$this._contains;
  set contains(String? contains) => _$this._contains = contains;

  String? _notContains;
  String? get notContains => _$this._notContains;
  set notContains(String? notContains) => _$this._notContains = notContains;

  ListBuilder<String>? _between;
  ListBuilder<String> get between =>
      _$this._between ??= new ListBuilder<String>();
  set between(ListBuilder<String>? between) => _$this._between = between;

  String? _beginsWith;
  String? get beginsWith => _$this._beginsWith;
  set beginsWith(String? beginsWith) => _$this._beginsWith = beginsWith;

  bool? _attributeExists;
  bool? get attributeExists => _$this._attributeExists;
  set attributeExists(bool? attributeExists) =>
      _$this._attributeExists = attributeExists;

  GModelAttributeTypes? _attributeType;
  GModelAttributeTypes? get attributeType => _$this._attributeType;
  set attributeType(GModelAttributeTypes? attributeType) =>
      _$this._attributeType = attributeType;

  GModelSizeInputBuilder? _size;
  GModelSizeInputBuilder get size =>
      _$this._size ??= new GModelSizeInputBuilder();
  set size(GModelSizeInputBuilder? size) => _$this._size = size;

  GModelIDInputBuilder();

  GModelIDInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ne = $v.ne;
      _eq = $v.eq;
      _le = $v.le;
      _lt = $v.lt;
      _ge = $v.ge;
      _gt = $v.gt;
      _contains = $v.contains;
      _notContains = $v.notContains;
      _between = $v.between?.toBuilder();
      _beginsWith = $v.beginsWith;
      _attributeExists = $v.attributeExists;
      _attributeType = $v.attributeType;
      _size = $v.size?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelIDInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelIDInput;
  }

  @override
  void update(void Function(GModelIDInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelIDInput build() => _build();

  _$GModelIDInput _build() {
    _$GModelIDInput _$result;
    try {
      _$result = _$v ??
          new _$GModelIDInput._(
              ne: ne,
              eq: eq,
              le: le,
              lt: lt,
              ge: ge,
              gt: gt,
              contains: contains,
              notContains: notContains,
              between: _between?.build(),
              beginsWith: beginsWith,
              attributeExists: attributeExists,
              attributeType: attributeType,
              size: _size?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();

        _$failedField = 'size';
        _size?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelIDInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelIntInput extends GModelIntInput {
  @override
  final int? ne;
  @override
  final int? eq;
  @override
  final int? le;
  @override
  final int? lt;
  @override
  final int? ge;
  @override
  final int? gt;
  @override
  final BuiltList<int>? between;
  @override
  final bool? attributeExists;
  @override
  final GModelAttributeTypes? attributeType;

  factory _$GModelIntInput([void Function(GModelIntInputBuilder)? updates]) =>
      (new GModelIntInputBuilder()..update(updates))._build();

  _$GModelIntInput._(
      {this.ne,
      this.eq,
      this.le,
      this.lt,
      this.ge,
      this.gt,
      this.between,
      this.attributeExists,
      this.attributeType})
      : super._();

  @override
  GModelIntInput rebuild(void Function(GModelIntInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelIntInputBuilder toBuilder() =>
      new GModelIntInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelIntInput &&
        ne == other.ne &&
        eq == other.eq &&
        le == other.le &&
        lt == other.lt &&
        ge == other.ge &&
        gt == other.gt &&
        between == other.between &&
        attributeExists == other.attributeExists &&
        attributeType == other.attributeType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, ne.hashCode), eq.hashCode),
                                le.hashCode),
                            lt.hashCode),
                        ge.hashCode),
                    gt.hashCode),
                between.hashCode),
            attributeExists.hashCode),
        attributeType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelIntInput')
          ..add('ne', ne)
          ..add('eq', eq)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('between', between)
          ..add('attributeExists', attributeExists)
          ..add('attributeType', attributeType))
        .toString();
  }
}

class GModelIntInputBuilder
    implements Builder<GModelIntInput, GModelIntInputBuilder> {
  _$GModelIntInput? _$v;

  int? _ne;
  int? get ne => _$this._ne;
  set ne(int? ne) => _$this._ne = ne;

  int? _eq;
  int? get eq => _$this._eq;
  set eq(int? eq) => _$this._eq = eq;

  int? _le;
  int? get le => _$this._le;
  set le(int? le) => _$this._le = le;

  int? _lt;
  int? get lt => _$this._lt;
  set lt(int? lt) => _$this._lt = lt;

  int? _ge;
  int? get ge => _$this._ge;
  set ge(int? ge) => _$this._ge = ge;

  int? _gt;
  int? get gt => _$this._gt;
  set gt(int? gt) => _$this._gt = gt;

  ListBuilder<int>? _between;
  ListBuilder<int> get between => _$this._between ??= new ListBuilder<int>();
  set between(ListBuilder<int>? between) => _$this._between = between;

  bool? _attributeExists;
  bool? get attributeExists => _$this._attributeExists;
  set attributeExists(bool? attributeExists) =>
      _$this._attributeExists = attributeExists;

  GModelAttributeTypes? _attributeType;
  GModelAttributeTypes? get attributeType => _$this._attributeType;
  set attributeType(GModelAttributeTypes? attributeType) =>
      _$this._attributeType = attributeType;

  GModelIntInputBuilder();

  GModelIntInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ne = $v.ne;
      _eq = $v.eq;
      _le = $v.le;
      _lt = $v.lt;
      _ge = $v.ge;
      _gt = $v.gt;
      _between = $v.between?.toBuilder();
      _attributeExists = $v.attributeExists;
      _attributeType = $v.attributeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelIntInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelIntInput;
  }

  @override
  void update(void Function(GModelIntInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelIntInput build() => _build();

  _$GModelIntInput _build() {
    _$GModelIntInput _$result;
    try {
      _$result = _$v ??
          new _$GModelIntInput._(
              ne: ne,
              eq: eq,
              le: le,
              lt: lt,
              ge: ge,
              gt: gt,
              between: _between?.build(),
              attributeExists: attributeExists,
              attributeType: attributeType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelIntInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelIntKeyConditionInput extends GModelIntKeyConditionInput {
  @override
  final int? eq;
  @override
  final int? le;
  @override
  final int? lt;
  @override
  final int? ge;
  @override
  final int? gt;
  @override
  final BuiltList<int>? between;

  factory _$GModelIntKeyConditionInput(
          [void Function(GModelIntKeyConditionInputBuilder)? updates]) =>
      (new GModelIntKeyConditionInputBuilder()..update(updates))._build();

  _$GModelIntKeyConditionInput._(
      {this.eq, this.le, this.lt, this.ge, this.gt, this.between})
      : super._();

  @override
  GModelIntKeyConditionInput rebuild(
          void Function(GModelIntKeyConditionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelIntKeyConditionInputBuilder toBuilder() =>
      new GModelIntKeyConditionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelIntKeyConditionInput &&
        eq == other.eq &&
        le == other.le &&
        lt == other.lt &&
        ge == other.ge &&
        gt == other.gt &&
        between == other.between;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, eq.hashCode), le.hashCode), lt.hashCode),
                ge.hashCode),
            gt.hashCode),
        between.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelIntKeyConditionInput')
          ..add('eq', eq)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('between', between))
        .toString();
  }
}

class GModelIntKeyConditionInputBuilder
    implements
        Builder<GModelIntKeyConditionInput, GModelIntKeyConditionInputBuilder> {
  _$GModelIntKeyConditionInput? _$v;

  int? _eq;
  int? get eq => _$this._eq;
  set eq(int? eq) => _$this._eq = eq;

  int? _le;
  int? get le => _$this._le;
  set le(int? le) => _$this._le = le;

  int? _lt;
  int? get lt => _$this._lt;
  set lt(int? lt) => _$this._lt = lt;

  int? _ge;
  int? get ge => _$this._ge;
  set ge(int? ge) => _$this._ge = ge;

  int? _gt;
  int? get gt => _$this._gt;
  set gt(int? gt) => _$this._gt = gt;

  ListBuilder<int>? _between;
  ListBuilder<int> get between => _$this._between ??= new ListBuilder<int>();
  set between(ListBuilder<int>? between) => _$this._between = between;

  GModelIntKeyConditionInputBuilder();

  GModelIntKeyConditionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eq = $v.eq;
      _le = $v.le;
      _lt = $v.lt;
      _ge = $v.ge;
      _gt = $v.gt;
      _between = $v.between?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelIntKeyConditionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelIntKeyConditionInput;
  }

  @override
  void update(void Function(GModelIntKeyConditionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelIntKeyConditionInput build() => _build();

  _$GModelIntKeyConditionInput _build() {
    _$GModelIntKeyConditionInput _$result;
    try {
      _$result = _$v ??
          new _$GModelIntKeyConditionInput._(
              eq: eq,
              le: le,
              lt: lt,
              ge: ge,
              gt: gt,
              between: _between?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelIntKeyConditionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelSizeInput extends GModelSizeInput {
  @override
  final int? ne;
  @override
  final int? eq;
  @override
  final int? le;
  @override
  final int? lt;
  @override
  final int? ge;
  @override
  final int? gt;
  @override
  final BuiltList<int>? between;

  factory _$GModelSizeInput([void Function(GModelSizeInputBuilder)? updates]) =>
      (new GModelSizeInputBuilder()..update(updates))._build();

  _$GModelSizeInput._(
      {this.ne, this.eq, this.le, this.lt, this.ge, this.gt, this.between})
      : super._();

  @override
  GModelSizeInput rebuild(void Function(GModelSizeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelSizeInputBuilder toBuilder() =>
      new GModelSizeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelSizeInput &&
        ne == other.ne &&
        eq == other.eq &&
        le == other.le &&
        lt == other.lt &&
        ge == other.ge &&
        gt == other.gt &&
        between == other.between;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, ne.hashCode), eq.hashCode), le.hashCode),
                    lt.hashCode),
                ge.hashCode),
            gt.hashCode),
        between.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelSizeInput')
          ..add('ne', ne)
          ..add('eq', eq)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('between', between))
        .toString();
  }
}

class GModelSizeInputBuilder
    implements Builder<GModelSizeInput, GModelSizeInputBuilder> {
  _$GModelSizeInput? _$v;

  int? _ne;
  int? get ne => _$this._ne;
  set ne(int? ne) => _$this._ne = ne;

  int? _eq;
  int? get eq => _$this._eq;
  set eq(int? eq) => _$this._eq = eq;

  int? _le;
  int? get le => _$this._le;
  set le(int? le) => _$this._le = le;

  int? _lt;
  int? get lt => _$this._lt;
  set lt(int? lt) => _$this._lt = lt;

  int? _ge;
  int? get ge => _$this._ge;
  set ge(int? ge) => _$this._ge = ge;

  int? _gt;
  int? get gt => _$this._gt;
  set gt(int? gt) => _$this._gt = gt;

  ListBuilder<int>? _between;
  ListBuilder<int> get between => _$this._between ??= new ListBuilder<int>();
  set between(ListBuilder<int>? between) => _$this._between = between;

  GModelSizeInputBuilder();

  GModelSizeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ne = $v.ne;
      _eq = $v.eq;
      _le = $v.le;
      _lt = $v.lt;
      _ge = $v.ge;
      _gt = $v.gt;
      _between = $v.between?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelSizeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelSizeInput;
  }

  @override
  void update(void Function(GModelSizeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelSizeInput build() => _build();

  _$GModelSizeInput _build() {
    _$GModelSizeInput _$result;
    try {
      _$result = _$v ??
          new _$GModelSizeInput._(
              ne: ne,
              eq: eq,
              le: le,
              lt: lt,
              ge: ge,
              gt: gt,
              between: _between?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelSizeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelStringInput extends GModelStringInput {
  @override
  final String? ne;
  @override
  final String? eq;
  @override
  final String? le;
  @override
  final String? lt;
  @override
  final String? ge;
  @override
  final String? gt;
  @override
  final String? contains;
  @override
  final String? notContains;
  @override
  final BuiltList<String>? between;
  @override
  final String? beginsWith;
  @override
  final bool? attributeExists;
  @override
  final GModelAttributeTypes? attributeType;
  @override
  final GModelSizeInput? size;

  factory _$GModelStringInput(
          [void Function(GModelStringInputBuilder)? updates]) =>
      (new GModelStringInputBuilder()..update(updates))._build();

  _$GModelStringInput._(
      {this.ne,
      this.eq,
      this.le,
      this.lt,
      this.ge,
      this.gt,
      this.contains,
      this.notContains,
      this.between,
      this.beginsWith,
      this.attributeExists,
      this.attributeType,
      this.size})
      : super._();

  @override
  GModelStringInput rebuild(void Function(GModelStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelStringInputBuilder toBuilder() =>
      new GModelStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelStringInput &&
        ne == other.ne &&
        eq == other.eq &&
        le == other.le &&
        lt == other.lt &&
        ge == other.ge &&
        gt == other.gt &&
        contains == other.contains &&
        notContains == other.notContains &&
        between == other.between &&
        beginsWith == other.beginsWith &&
        attributeExists == other.attributeExists &&
        attributeType == other.attributeType &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, ne.hashCode),
                                                    eq.hashCode),
                                                le.hashCode),
                                            lt.hashCode),
                                        ge.hashCode),
                                    gt.hashCode),
                                contains.hashCode),
                            notContains.hashCode),
                        between.hashCode),
                    beginsWith.hashCode),
                attributeExists.hashCode),
            attributeType.hashCode),
        size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelStringInput')
          ..add('ne', ne)
          ..add('eq', eq)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('contains', contains)
          ..add('notContains', notContains)
          ..add('between', between)
          ..add('beginsWith', beginsWith)
          ..add('attributeExists', attributeExists)
          ..add('attributeType', attributeType)
          ..add('size', size))
        .toString();
  }
}

class GModelStringInputBuilder
    implements Builder<GModelStringInput, GModelStringInputBuilder> {
  _$GModelStringInput? _$v;

  String? _ne;
  String? get ne => _$this._ne;
  set ne(String? ne) => _$this._ne = ne;

  String? _eq;
  String? get eq => _$this._eq;
  set eq(String? eq) => _$this._eq = eq;

  String? _le;
  String? get le => _$this._le;
  set le(String? le) => _$this._le = le;

  String? _lt;
  String? get lt => _$this._lt;
  set lt(String? lt) => _$this._lt = lt;

  String? _ge;
  String? get ge => _$this._ge;
  set ge(String? ge) => _$this._ge = ge;

  String? _gt;
  String? get gt => _$this._gt;
  set gt(String? gt) => _$this._gt = gt;

  String? _contains;
  String? get contains => _$this._contains;
  set contains(String? contains) => _$this._contains = contains;

  String? _notContains;
  String? get notContains => _$this._notContains;
  set notContains(String? notContains) => _$this._notContains = notContains;

  ListBuilder<String>? _between;
  ListBuilder<String> get between =>
      _$this._between ??= new ListBuilder<String>();
  set between(ListBuilder<String>? between) => _$this._between = between;

  String? _beginsWith;
  String? get beginsWith => _$this._beginsWith;
  set beginsWith(String? beginsWith) => _$this._beginsWith = beginsWith;

  bool? _attributeExists;
  bool? get attributeExists => _$this._attributeExists;
  set attributeExists(bool? attributeExists) =>
      _$this._attributeExists = attributeExists;

  GModelAttributeTypes? _attributeType;
  GModelAttributeTypes? get attributeType => _$this._attributeType;
  set attributeType(GModelAttributeTypes? attributeType) =>
      _$this._attributeType = attributeType;

  GModelSizeInputBuilder? _size;
  GModelSizeInputBuilder get size =>
      _$this._size ??= new GModelSizeInputBuilder();
  set size(GModelSizeInputBuilder? size) => _$this._size = size;

  GModelStringInputBuilder();

  GModelStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ne = $v.ne;
      _eq = $v.eq;
      _le = $v.le;
      _lt = $v.lt;
      _ge = $v.ge;
      _gt = $v.gt;
      _contains = $v.contains;
      _notContains = $v.notContains;
      _between = $v.between?.toBuilder();
      _beginsWith = $v.beginsWith;
      _attributeExists = $v.attributeExists;
      _attributeType = $v.attributeType;
      _size = $v.size?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelStringInput;
  }

  @override
  void update(void Function(GModelStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelStringInput build() => _build();

  _$GModelStringInput _build() {
    _$GModelStringInput _$result;
    try {
      _$result = _$v ??
          new _$GModelStringInput._(
              ne: ne,
              eq: eq,
              le: le,
              lt: lt,
              ge: ge,
              gt: gt,
              contains: contains,
              notContains: notContains,
              between: _between?.build(),
              beginsWith: beginsWith,
              attributeExists: attributeExists,
              attributeType: attributeType,
              size: _size?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();

        _$failedField = 'size';
        _size?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelStringInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelUserConditionInput extends GModelUserConditionInput {
  @override
  final GModelStringInput? displayUsername;
  @override
  final GModelStringInput? name;
  @override
  final GModelIDInput? upvotedHabits;
  @override
  final GModelIDInput? downvotedHabits;
  @override
  final BuiltList<GModelUserConditionInput>? and;
  @override
  final BuiltList<GModelUserConditionInput>? or;
  @override
  final GModelUserConditionInput? not;

  factory _$GModelUserConditionInput(
          [void Function(GModelUserConditionInputBuilder)? updates]) =>
      (new GModelUserConditionInputBuilder()..update(updates))._build();

  _$GModelUserConditionInput._(
      {this.displayUsername,
      this.name,
      this.upvotedHabits,
      this.downvotedHabits,
      this.and,
      this.or,
      this.not})
      : super._();

  @override
  GModelUserConditionInput rebuild(
          void Function(GModelUserConditionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelUserConditionInputBuilder toBuilder() =>
      new GModelUserConditionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelUserConditionInput &&
        displayUsername == other.displayUsername &&
        name == other.name &&
        upvotedHabits == other.upvotedHabits &&
        downvotedHabits == other.downvotedHabits &&
        and == other.and &&
        or == other.or &&
        not == other.not;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, displayUsername.hashCode), name.hashCode),
                        upvotedHabits.hashCode),
                    downvotedHabits.hashCode),
                and.hashCode),
            or.hashCode),
        not.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelUserConditionInput')
          ..add('displayUsername', displayUsername)
          ..add('name', name)
          ..add('upvotedHabits', upvotedHabits)
          ..add('downvotedHabits', downvotedHabits)
          ..add('and', and)
          ..add('or', or)
          ..add('not', not))
        .toString();
  }
}

class GModelUserConditionInputBuilder
    implements
        Builder<GModelUserConditionInput, GModelUserConditionInputBuilder> {
  _$GModelUserConditionInput? _$v;

  GModelStringInputBuilder? _displayUsername;
  GModelStringInputBuilder get displayUsername =>
      _$this._displayUsername ??= new GModelStringInputBuilder();
  set displayUsername(GModelStringInputBuilder? displayUsername) =>
      _$this._displayUsername = displayUsername;

  GModelStringInputBuilder? _name;
  GModelStringInputBuilder get name =>
      _$this._name ??= new GModelStringInputBuilder();
  set name(GModelStringInputBuilder? name) => _$this._name = name;

  GModelIDInputBuilder? _upvotedHabits;
  GModelIDInputBuilder get upvotedHabits =>
      _$this._upvotedHabits ??= new GModelIDInputBuilder();
  set upvotedHabits(GModelIDInputBuilder? upvotedHabits) =>
      _$this._upvotedHabits = upvotedHabits;

  GModelIDInputBuilder? _downvotedHabits;
  GModelIDInputBuilder get downvotedHabits =>
      _$this._downvotedHabits ??= new GModelIDInputBuilder();
  set downvotedHabits(GModelIDInputBuilder? downvotedHabits) =>
      _$this._downvotedHabits = downvotedHabits;

  ListBuilder<GModelUserConditionInput>? _and;
  ListBuilder<GModelUserConditionInput> get and =>
      _$this._and ??= new ListBuilder<GModelUserConditionInput>();
  set and(ListBuilder<GModelUserConditionInput>? and) => _$this._and = and;

  ListBuilder<GModelUserConditionInput>? _or;
  ListBuilder<GModelUserConditionInput> get or =>
      _$this._or ??= new ListBuilder<GModelUserConditionInput>();
  set or(ListBuilder<GModelUserConditionInput>? or) => _$this._or = or;

  GModelUserConditionInputBuilder? _not;
  GModelUserConditionInputBuilder get not =>
      _$this._not ??= new GModelUserConditionInputBuilder();
  set not(GModelUserConditionInputBuilder? not) => _$this._not = not;

  GModelUserConditionInputBuilder();

  GModelUserConditionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayUsername = $v.displayUsername?.toBuilder();
      _name = $v.name?.toBuilder();
      _upvotedHabits = $v.upvotedHabits?.toBuilder();
      _downvotedHabits = $v.downvotedHabits?.toBuilder();
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _not = $v.not?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelUserConditionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelUserConditionInput;
  }

  @override
  void update(void Function(GModelUserConditionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelUserConditionInput build() => _build();

  _$GModelUserConditionInput _build() {
    _$GModelUserConditionInput _$result;
    try {
      _$result = _$v ??
          new _$GModelUserConditionInput._(
              displayUsername: _displayUsername?.build(),
              name: _name?.build(),
              upvotedHabits: _upvotedHabits?.build(),
              downvotedHabits: _downvotedHabits?.build(),
              and: _and?.build(),
              or: _or?.build(),
              not: _not?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'displayUsername';
        _displayUsername?.build();
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'upvotedHabits';
        _upvotedHabits?.build();
        _$failedField = 'downvotedHabits';
        _downvotedHabits?.build();
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'not';
        _not?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelUserConditionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GModelUserFilterInput extends GModelUserFilterInput {
  @override
  final GModelStringInput? username;
  @override
  final GModelStringInput? displayUsername;
  @override
  final GModelStringInput? name;
  @override
  final GModelIDInput? upvotedHabits;
  @override
  final GModelIDInput? downvotedHabits;
  @override
  final BuiltList<GModelUserFilterInput>? and;
  @override
  final BuiltList<GModelUserFilterInput>? or;
  @override
  final GModelUserFilterInput? not;

  factory _$GModelUserFilterInput(
          [void Function(GModelUserFilterInputBuilder)? updates]) =>
      (new GModelUserFilterInputBuilder()..update(updates))._build();

  _$GModelUserFilterInput._(
      {this.username,
      this.displayUsername,
      this.name,
      this.upvotedHabits,
      this.downvotedHabits,
      this.and,
      this.or,
      this.not})
      : super._();

  @override
  GModelUserFilterInput rebuild(
          void Function(GModelUserFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModelUserFilterInputBuilder toBuilder() =>
      new GModelUserFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModelUserFilterInput &&
        username == other.username &&
        displayUsername == other.displayUsername &&
        name == other.name &&
        upvotedHabits == other.upvotedHabits &&
        downvotedHabits == other.downvotedHabits &&
        and == other.and &&
        or == other.or &&
        not == other.not;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, username.hashCode),
                                displayUsername.hashCode),
                            name.hashCode),
                        upvotedHabits.hashCode),
                    downvotedHabits.hashCode),
                and.hashCode),
            or.hashCode),
        not.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModelUserFilterInput')
          ..add('username', username)
          ..add('displayUsername', displayUsername)
          ..add('name', name)
          ..add('upvotedHabits', upvotedHabits)
          ..add('downvotedHabits', downvotedHabits)
          ..add('and', and)
          ..add('or', or)
          ..add('not', not))
        .toString();
  }
}

class GModelUserFilterInputBuilder
    implements Builder<GModelUserFilterInput, GModelUserFilterInputBuilder> {
  _$GModelUserFilterInput? _$v;

  GModelStringInputBuilder? _username;
  GModelStringInputBuilder get username =>
      _$this._username ??= new GModelStringInputBuilder();
  set username(GModelStringInputBuilder? username) =>
      _$this._username = username;

  GModelStringInputBuilder? _displayUsername;
  GModelStringInputBuilder get displayUsername =>
      _$this._displayUsername ??= new GModelStringInputBuilder();
  set displayUsername(GModelStringInputBuilder? displayUsername) =>
      _$this._displayUsername = displayUsername;

  GModelStringInputBuilder? _name;
  GModelStringInputBuilder get name =>
      _$this._name ??= new GModelStringInputBuilder();
  set name(GModelStringInputBuilder? name) => _$this._name = name;

  GModelIDInputBuilder? _upvotedHabits;
  GModelIDInputBuilder get upvotedHabits =>
      _$this._upvotedHabits ??= new GModelIDInputBuilder();
  set upvotedHabits(GModelIDInputBuilder? upvotedHabits) =>
      _$this._upvotedHabits = upvotedHabits;

  GModelIDInputBuilder? _downvotedHabits;
  GModelIDInputBuilder get downvotedHabits =>
      _$this._downvotedHabits ??= new GModelIDInputBuilder();
  set downvotedHabits(GModelIDInputBuilder? downvotedHabits) =>
      _$this._downvotedHabits = downvotedHabits;

  ListBuilder<GModelUserFilterInput>? _and;
  ListBuilder<GModelUserFilterInput> get and =>
      _$this._and ??= new ListBuilder<GModelUserFilterInput>();
  set and(ListBuilder<GModelUserFilterInput>? and) => _$this._and = and;

  ListBuilder<GModelUserFilterInput>? _or;
  ListBuilder<GModelUserFilterInput> get or =>
      _$this._or ??= new ListBuilder<GModelUserFilterInput>();
  set or(ListBuilder<GModelUserFilterInput>? or) => _$this._or = or;

  GModelUserFilterInputBuilder? _not;
  GModelUserFilterInputBuilder get not =>
      _$this._not ??= new GModelUserFilterInputBuilder();
  set not(GModelUserFilterInputBuilder? not) => _$this._not = not;

  GModelUserFilterInputBuilder();

  GModelUserFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username?.toBuilder();
      _displayUsername = $v.displayUsername?.toBuilder();
      _name = $v.name?.toBuilder();
      _upvotedHabits = $v.upvotedHabits?.toBuilder();
      _downvotedHabits = $v.downvotedHabits?.toBuilder();
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _not = $v.not?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModelUserFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModelUserFilterInput;
  }

  @override
  void update(void Function(GModelUserFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModelUserFilterInput build() => _build();

  _$GModelUserFilterInput _build() {
    _$GModelUserFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GModelUserFilterInput._(
              username: _username?.build(),
              displayUsername: _displayUsername?.build(),
              name: _name?.build(),
              upvotedHabits: _upvotedHabits?.build(),
              downvotedHabits: _downvotedHabits?.build(),
              and: _and?.build(),
              or: _or?.build(),
              not: _not?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'username';
        _username?.build();
        _$failedField = 'displayUsername';
        _displayUsername?.build();
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'upvotedHabits';
        _upvotedHabits?.build();
        _$failedField = 'downvotedHabits';
        _downvotedHabits?.build();
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'not';
        _not?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModelUserFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GS3ObjectInput extends GS3ObjectInput {
  @override
  final String bucket;
  @override
  final String region;
  @override
  final String key;
  @override
  final String? cognitoId;
  @override
  final GAccessLevel? accessLevel;

  factory _$GS3ObjectInput([void Function(GS3ObjectInputBuilder)? updates]) =>
      (new GS3ObjectInputBuilder()..update(updates))._build();

  _$GS3ObjectInput._(
      {required this.bucket,
      required this.region,
      required this.key,
      this.cognitoId,
      this.accessLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bucket, r'GS3ObjectInput', 'bucket');
    BuiltValueNullFieldError.checkNotNull(region, r'GS3ObjectInput', 'region');
    BuiltValueNullFieldError.checkNotNull(key, r'GS3ObjectInput', 'key');
  }

  @override
  GS3ObjectInput rebuild(void Function(GS3ObjectInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GS3ObjectInputBuilder toBuilder() =>
      new GS3ObjectInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GS3ObjectInput &&
        bucket == other.bucket &&
        region == other.region &&
        key == other.key &&
        cognitoId == other.cognitoId &&
        accessLevel == other.accessLevel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, bucket.hashCode), region.hashCode), key.hashCode),
            cognitoId.hashCode),
        accessLevel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GS3ObjectInput')
          ..add('bucket', bucket)
          ..add('region', region)
          ..add('key', key)
          ..add('cognitoId', cognitoId)
          ..add('accessLevel', accessLevel))
        .toString();
  }
}

class GS3ObjectInputBuilder
    implements Builder<GS3ObjectInput, GS3ObjectInputBuilder> {
  _$GS3ObjectInput? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _cognitoId;
  String? get cognitoId => _$this._cognitoId;
  set cognitoId(String? cognitoId) => _$this._cognitoId = cognitoId;

  GAccessLevel? _accessLevel;
  GAccessLevel? get accessLevel => _$this._accessLevel;
  set accessLevel(GAccessLevel? accessLevel) =>
      _$this._accessLevel = accessLevel;

  GS3ObjectInputBuilder();

  GS3ObjectInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _region = $v.region;
      _key = $v.key;
      _cognitoId = $v.cognitoId;
      _accessLevel = $v.accessLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GS3ObjectInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GS3ObjectInput;
  }

  @override
  void update(void Function(GS3ObjectInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GS3ObjectInput build() => _build();

  _$GS3ObjectInput _build() {
    final _$result = _$v ??
        new _$GS3ObjectInput._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GS3ObjectInput', 'bucket'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'GS3ObjectInput', 'region'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GS3ObjectInput', 'key'),
            cognitoId: cognitoId,
            accessLevel: accessLevel);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateCommentInput extends GUpdateCommentInput {
  @override
  final String id;
  @override
  final String? habitId;
  @override
  final String? owner;
  @override
  final String? comment;

  factory _$GUpdateCommentInput(
          [void Function(GUpdateCommentInputBuilder)? updates]) =>
      (new GUpdateCommentInputBuilder()..update(updates))._build();

  _$GUpdateCommentInput._(
      {required this.id, this.habitId, this.owner, this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdateCommentInput', 'id');
  }

  @override
  GUpdateCommentInput rebuild(
          void Function(GUpdateCommentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateCommentInputBuilder toBuilder() =>
      new GUpdateCommentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateCommentInput &&
        id == other.id &&
        habitId == other.habitId &&
        owner == other.owner &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), habitId.hashCode), owner.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateCommentInput')
          ..add('id', id)
          ..add('habitId', habitId)
          ..add('owner', owner)
          ..add('comment', comment))
        .toString();
  }
}

class GUpdateCommentInputBuilder
    implements Builder<GUpdateCommentInput, GUpdateCommentInputBuilder> {
  _$GUpdateCommentInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _habitId;
  String? get habitId => _$this._habitId;
  set habitId(String? habitId) => _$this._habitId = habitId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GUpdateCommentInputBuilder();

  GUpdateCommentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _habitId = $v.habitId;
      _owner = $v.owner;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateCommentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateCommentInput;
  }

  @override
  void update(void Function(GUpdateCommentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateCommentInput build() => _build();

  _$GUpdateCommentInput _build() {
    final _$result = _$v ??
        new _$GUpdateCommentInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateCommentInput', 'id'),
            habitId: habitId,
            owner: owner,
            comment: comment);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateHabitInput extends GUpdateHabitInput {
  @override
  final String id;
  @override
  final String? tagline;
  @override
  final GCategory? category;
  @override
  final String? details;
  @override
  final int? ups;
  @override
  final int? downs;
  @override
  final String? owner;

  factory _$GUpdateHabitInput(
          [void Function(GUpdateHabitInputBuilder)? updates]) =>
      (new GUpdateHabitInputBuilder()..update(updates))._build();

  _$GUpdateHabitInput._(
      {required this.id,
      this.tagline,
      this.category,
      this.details,
      this.ups,
      this.downs,
      this.owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdateHabitInput', 'id');
  }

  @override
  GUpdateHabitInput rebuild(void Function(GUpdateHabitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateHabitInputBuilder toBuilder() =>
      new GUpdateHabitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateHabitInput &&
        id == other.id &&
        tagline == other.tagline &&
        category == other.category &&
        details == other.details &&
        ups == other.ups &&
        downs == other.downs &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), tagline.hashCode),
                        category.hashCode),
                    details.hashCode),
                ups.hashCode),
            downs.hashCode),
        owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateHabitInput')
          ..add('id', id)
          ..add('tagline', tagline)
          ..add('category', category)
          ..add('details', details)
          ..add('ups', ups)
          ..add('downs', downs)
          ..add('owner', owner))
        .toString();
  }
}

class GUpdateHabitInputBuilder
    implements Builder<GUpdateHabitInput, GUpdateHabitInputBuilder> {
  _$GUpdateHabitInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tagline;
  String? get tagline => _$this._tagline;
  set tagline(String? tagline) => _$this._tagline = tagline;

  GCategory? _category;
  GCategory? get category => _$this._category;
  set category(GCategory? category) => _$this._category = category;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  int? _ups;
  int? get ups => _$this._ups;
  set ups(int? ups) => _$this._ups = ups;

  int? _downs;
  int? get downs => _$this._downs;
  set downs(int? downs) => _$this._downs = downs;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  GUpdateHabitInputBuilder();

  GUpdateHabitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tagline = $v.tagline;
      _category = $v.category;
      _details = $v.details;
      _ups = $v.ups;
      _downs = $v.downs;
      _owner = $v.owner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateHabitInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateHabitInput;
  }

  @override
  void update(void Function(GUpdateHabitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateHabitInput build() => _build();

  _$GUpdateHabitInput _build() {
    final _$result = _$v ??
        new _$GUpdateHabitInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateHabitInput', 'id'),
            tagline: tagline,
            category: category,
            details: details,
            ups: ups,
            downs: downs,
            owner: owner);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserInput extends GUpdateUserInput {
  @override
  final String username;
  @override
  final String? displayUsername;
  @override
  final String? name;
  @override
  final GS3ObjectInput? avatar;
  @override
  final BuiltList<String>? upvotedHabits;
  @override
  final BuiltList<String>? downvotedHabits;

  factory _$GUpdateUserInput(
          [void Function(GUpdateUserInputBuilder)? updates]) =>
      (new GUpdateUserInputBuilder()..update(updates))._build();

  _$GUpdateUserInput._(
      {required this.username,
      this.displayUsername,
      this.name,
      this.avatar,
      this.upvotedHabits,
      this.downvotedHabits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GUpdateUserInput', 'username');
  }

  @override
  GUpdateUserInput rebuild(void Function(GUpdateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserInputBuilder toBuilder() =>
      new GUpdateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserInput &&
        username == other.username &&
        displayUsername == other.displayUsername &&
        name == other.name &&
        avatar == other.avatar &&
        upvotedHabits == other.upvotedHabits &&
        downvotedHabits == other.downvotedHabits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, username.hashCode), displayUsername.hashCode),
                    name.hashCode),
                avatar.hashCode),
            upvotedHabits.hashCode),
        downvotedHabits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserInput')
          ..add('username', username)
          ..add('displayUsername', displayUsername)
          ..add('name', name)
          ..add('avatar', avatar)
          ..add('upvotedHabits', upvotedHabits)
          ..add('downvotedHabits', downvotedHabits))
        .toString();
  }
}

class GUpdateUserInputBuilder
    implements Builder<GUpdateUserInput, GUpdateUserInputBuilder> {
  _$GUpdateUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _displayUsername;
  String? get displayUsername => _$this._displayUsername;
  set displayUsername(String? displayUsername) =>
      _$this._displayUsername = displayUsername;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GS3ObjectInputBuilder? _avatar;
  GS3ObjectInputBuilder get avatar =>
      _$this._avatar ??= new GS3ObjectInputBuilder();
  set avatar(GS3ObjectInputBuilder? avatar) => _$this._avatar = avatar;

  ListBuilder<String>? _upvotedHabits;
  ListBuilder<String> get upvotedHabits =>
      _$this._upvotedHabits ??= new ListBuilder<String>();
  set upvotedHabits(ListBuilder<String>? upvotedHabits) =>
      _$this._upvotedHabits = upvotedHabits;

  ListBuilder<String>? _downvotedHabits;
  ListBuilder<String> get downvotedHabits =>
      _$this._downvotedHabits ??= new ListBuilder<String>();
  set downvotedHabits(ListBuilder<String>? downvotedHabits) =>
      _$this._downvotedHabits = downvotedHabits;

  GUpdateUserInputBuilder();

  GUpdateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _displayUsername = $v.displayUsername;
      _name = $v.name;
      _avatar = $v.avatar?.toBuilder();
      _upvotedHabits = $v.upvotedHabits?.toBuilder();
      _downvotedHabits = $v.downvotedHabits?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserInput;
  }

  @override
  void update(void Function(GUpdateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserInput build() => _build();

  _$GUpdateUserInput _build() {
    _$GUpdateUserInput _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserInput._(
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GUpdateUserInput', 'username'),
              displayUsername: displayUsername,
              name: name,
              avatar: _avatar?.build(),
              upvotedHabits: _upvotedHabits?.build(),
              downvotedHabits: _downvotedHabits?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
        _$failedField = 'upvotedHabits';
        _upvotedHabits?.build();
        _$failedField = 'downvotedHabits';
        _downvotedHabits?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
