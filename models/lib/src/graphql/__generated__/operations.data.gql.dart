// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:habitr_models/src/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:habitr_models/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'operations.data.gql.g.dart';

abstract class GListHabitsData
    implements Built<GListHabitsData, GListHabitsDataBuilder> {
  GListHabitsData._();

  factory GListHabitsData([Function(GListHabitsDataBuilder b) updates]) =
      _$GListHabitsData;

  static void _initializeBuilder(GListHabitsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GListHabitsData_listHabits? get listHabits;
  static Serializer<GListHabitsData> get serializer =>
      _$gListHabitsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits
    implements
        Built<GListHabitsData_listHabits, GListHabitsData_listHabitsBuilder> {
  GListHabitsData_listHabits._();

  factory GListHabitsData_listHabits(
          [Function(GListHabitsData_listHabitsBuilder b) updates]) =
      _$GListHabitsData_listHabits;

  static void _initializeBuilder(GListHabitsData_listHabitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GListHabitsData_listHabits_items> get items;
  String? get nextToken;
  static Serializer<GListHabitsData_listHabits> get serializer =>
      _$gListHabitsDataListHabitsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items
    implements
        Built<GListHabitsData_listHabits_items,
            GListHabitsData_listHabits_itemsBuilder>,
        GAllHabitFields {
  GListHabitsData_listHabits_items._();

  factory GListHabitsData_listHabits_items(
          [Function(GListHabitsData_listHabits_itemsBuilder b) updates]) =
      _$GListHabitsData_listHabits_items;

  static void _initializeBuilder(GListHabitsData_listHabits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GListHabitsData_listHabits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GListHabitsData_listHabits_items> get serializer =>
      _$gListHabitsDataListHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits_items.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items_comments
    implements
        Built<GListHabitsData_listHabits_items_comments,
            GListHabitsData_listHabits_items_commentsBuilder>,
        GAllHabitFields_comments {
  GListHabitsData_listHabits_items_comments._();

  factory GListHabitsData_listHabits_items_comments(
      [Function(GListHabitsData_listHabits_items_commentsBuilder b)
          updates]) = _$GListHabitsData_listHabits_items_comments;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GListHabitsData_listHabits_items_comments_items> get items;
  static Serializer<GListHabitsData_listHabits_items_comments> get serializer =>
      _$gListHabitsDataListHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits_items_comments.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items_comments_items
    implements
        Built<GListHabitsData_listHabits_items_comments_items,
            GListHabitsData_listHabits_items_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GListHabitsData_listHabits_items_comments_items._();

  factory GListHabitsData_listHabits_items_comments_items(
      [Function(GListHabitsData_listHabits_items_comments_itemsBuilder b)
          updates]) = _$GListHabitsData_listHabits_items_comments_items;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GListHabitsData_listHabits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GListHabitsData_listHabits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GListHabitsData_listHabits_items_comments_items>
      get serializer => _$gListHabitsDataListHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits_items_comments_items.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items_comments_items_by
    implements
        Built<GListHabitsData_listHabits_items_comments_items_by,
            GListHabitsData_listHabits_items_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GListHabitsData_listHabits_items_comments_items_by._();

  factory GListHabitsData_listHabits_items_comments_items_by(
      [Function(GListHabitsData_listHabits_items_comments_items_byBuilder b)
          updates]) = _$GListHabitsData_listHabits_items_comments_items_by;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GListHabitsData_listHabits_items_comments_items_by_avatar? get avatar;
  static Serializer<GListHabitsData_listHabits_items_comments_items_by>
      get serializer =>
          _$gListHabitsDataListHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items_comments_items_by_avatar
    implements
        Built<GListHabitsData_listHabits_items_comments_items_by_avatar,
            GListHabitsData_listHabits_items_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GListHabitsData_listHabits_items_comments_items_by_avatar._();

  factory GListHabitsData_listHabits_items_comments_items_by_avatar(
      [Function(
              GListHabitsData_listHabits_items_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GListHabitsData_listHabits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GListHabitsData_listHabits_items_comments_items_by_avatar>
      get serializer =>
          _$gListHabitsDataListHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits_items_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items_comments_items_habit
    implements
        Built<GListHabitsData_listHabits_items_comments_items_habit,
            GListHabitsData_listHabits_items_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GListHabitsData_listHabits_items_comments_items_habit._();

  factory GListHabitsData_listHabits_items_comments_items_habit(
      [Function(GListHabitsData_listHabits_items_comments_items_habitBuilder b)
          updates]) = _$GListHabitsData_listHabits_items_comments_items_habit;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GListHabitsData_listHabits_items_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GListHabitsData_listHabits_items_comments_items_habit>
      get serializer =>
          _$gListHabitsDataListHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsData_listHabits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GListHabitsData_listHabits_items_comments_items_habit_comments
    implements
        Built<GListHabitsData_listHabits_items_comments_items_habit_comments,
            GListHabitsData_listHabits_items_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GListHabitsData_listHabits_items_comments_items_habit_comments._();

  factory GListHabitsData_listHabits_items_comments_items_habit_comments(
          [Function(
                  GListHabitsData_listHabits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GListHabitsData_listHabits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GListHabitsData_listHabits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GListHabitsData_listHabits_items_comments_items_habit_comments>
      get serializer =>
          _$gListHabitsDataListHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsData_listHabits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GListHabitsData_listHabits_items_comments_items_habit_comments_items
    implements
        Built<
            GListHabitsData_listHabits_items_comments_items_habit_comments_items,
            GListHabitsData_listHabits_items_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GListHabitsData_listHabits_items_comments_items_habit_comments_items._();

  factory GListHabitsData_listHabits_items_comments_items_habit_comments_items(
          [Function(
                  GListHabitsData_listHabits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GListHabitsData_listHabits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GListHabitsData_listHabits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GListHabitsData_listHabits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gListHabitsDataListHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsData_listHabits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsData_listHabits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsData_listHabits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GListHabitsByCategoryData
    implements
        Built<GListHabitsByCategoryData, GListHabitsByCategoryDataBuilder> {
  GListHabitsByCategoryData._();

  factory GListHabitsByCategoryData(
          [Function(GListHabitsByCategoryDataBuilder b) updates]) =
      _$GListHabitsByCategoryData;

  static void _initializeBuilder(GListHabitsByCategoryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GListHabitsByCategoryData_habitsByCategory? get habitsByCategory;
  static Serializer<GListHabitsByCategoryData> get serializer =>
      _$gListHabitsByCategoryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsByCategoryData.serializer,
        json,
      );
}

abstract class GListHabitsByCategoryData_habitsByCategory
    implements
        Built<GListHabitsByCategoryData_habitsByCategory,
            GListHabitsByCategoryData_habitsByCategoryBuilder> {
  GListHabitsByCategoryData_habitsByCategory._();

  factory GListHabitsByCategoryData_habitsByCategory(
      [Function(GListHabitsByCategoryData_habitsByCategoryBuilder b)
          updates]) = _$GListHabitsByCategoryData_habitsByCategory;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategoryBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GListHabitsByCategoryData_habitsByCategory_items> get items;
  String? get nextToken;
  static Serializer<GListHabitsByCategoryData_habitsByCategory>
      get serializer => _$gListHabitsByCategoryDataHabitsByCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsByCategoryData_habitsByCategory.serializer,
        json,
      );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items
    implements
        Built<GListHabitsByCategoryData_habitsByCategory_items,
            GListHabitsByCategoryData_habitsByCategory_itemsBuilder>,
        GAllHabitFields {
  GListHabitsByCategoryData_habitsByCategory_items._();

  factory GListHabitsByCategoryData_habitsByCategory_items(
      [Function(GListHabitsByCategoryData_habitsByCategory_itemsBuilder b)
          updates]) = _$GListHabitsByCategoryData_habitsByCategory_items;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GListHabitsByCategoryData_habitsByCategory_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GListHabitsByCategoryData_habitsByCategory_items>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsByCategoryData_habitsByCategory_items.serializer,
        json,
      );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments
    implements
        Built<GListHabitsByCategoryData_habitsByCategory_items_comments,
            GListHabitsByCategoryData_habitsByCategory_items_commentsBuilder>,
        GAllHabitFields_comments {
  GListHabitsByCategoryData_habitsByCategory_items_comments._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments(
      [Function(
              GListHabitsByCategoryData_habitsByCategory_items_commentsBuilder
                  b)
          updates]) = _$GListHabitsByCategoryData_habitsByCategory_items_comments;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GListHabitsByCategoryData_habitsByCategory_items_comments_items>
      get items;
  static Serializer<GListHabitsByCategoryData_habitsByCategory_items_comments>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments.serializer,
        json,
      );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments_items
    implements
        Built<GListHabitsByCategoryData_habitsByCategory_items_comments_items,
            GListHabitsByCategoryData_habitsByCategory_items_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GListHabitsByCategoryData_habitsByCategory_items_comments_items._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments_items(
          [Function(
                  GListHabitsByCategoryData_habitsByCategory_items_comments_itemsBuilder
                      b)
              updates]) =
      _$GListHabitsByCategoryData_habitsByCategory_items_comments_items;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit?
      get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsByCategoryData_habitsByCategory_items_comments_items
                .serializer,
            json,
          );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments_items_by
    implements
        Built<
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_by,
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_by._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments_items_by(
          [Function(
                  GListHabitsByCategoryData_habitsByCategory_items_comments_items_byBuilder
                      b)
              updates]) =
      _$GListHabitsByCategoryData_habitsByCategory_items_comments_items_by;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_byBuilder
              b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar?
      get avatar;
  static Serializer<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_by>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_by
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments_items_by?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_by
                .serializer,
            json,
          );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar
    implements
        Built<
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar,
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar(
          [Function(
                  GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit
    implements
        Built<
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit,
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit(
          [Function(
                  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habitBuilder
                      b)
              updates]) =
      _$GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habitBuilder
              b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit
                .serializer,
            json,
          );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments
    implements
        Built<
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments,
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments(
          [Function(
                  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items
    implements
        Built<
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items,
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items._();

  factory GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items(
          [Function(
                  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items>
      get serializer =>
          _$gListHabitsByCategoryDataHabitsByCategoryItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GGetHabitData
    implements Built<GGetHabitData, GGetHabitDataBuilder> {
  GGetHabitData._();

  factory GGetHabitData([Function(GGetHabitDataBuilder b) updates]) =
      _$GGetHabitData;

  static void _initializeBuilder(GGetHabitDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetHabitData_getHabit? get getHabit;
  static Serializer<GGetHabitData> get serializer => _$gGetHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit
    implements
        Built<GGetHabitData_getHabit, GGetHabitData_getHabitBuilder>,
        GAllHabitFields {
  GGetHabitData_getHabit._();

  factory GGetHabitData_getHabit(
          [Function(GGetHabitData_getHabitBuilder b) updates]) =
      _$GGetHabitData_getHabit;

  static void _initializeBuilder(GGetHabitData_getHabitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetHabitData_getHabit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetHabitData_getHabit> get serializer =>
      _$gGetHabitDataGetHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments
    implements
        Built<GGetHabitData_getHabit_comments,
            GGetHabitData_getHabit_commentsBuilder>,
        GAllHabitFields_comments {
  GGetHabitData_getHabit_comments._();

  factory GGetHabitData_getHabit_comments(
          [Function(GGetHabitData_getHabit_commentsBuilder b) updates]) =
      _$GGetHabitData_getHabit_comments;

  static void _initializeBuilder(GGetHabitData_getHabit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetHabitData_getHabit_comments_items> get items;
  static Serializer<GGetHabitData_getHabit_comments> get serializer =>
      _$gGetHabitDataGetHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments_items
    implements
        Built<GGetHabitData_getHabit_comments_items,
            GGetHabitData_getHabit_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GGetHabitData_getHabit_comments_items._();

  factory GGetHabitData_getHabit_comments_items(
          [Function(GGetHabitData_getHabit_comments_itemsBuilder b) updates]) =
      _$GGetHabitData_getHabit_comments_items;

  static void _initializeBuilder(
          GGetHabitData_getHabit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GGetHabitData_getHabit_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GGetHabitData_getHabit_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetHabitData_getHabit_comments_items> get serializer =>
      _$gGetHabitDataGetHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments_items.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments_items_by
    implements
        Built<GGetHabitData_getHabit_comments_items_by,
            GGetHabitData_getHabit_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GGetHabitData_getHabit_comments_items_by._();

  factory GGetHabitData_getHabit_comments_items_by(
      [Function(GGetHabitData_getHabit_comments_items_byBuilder b)
          updates]) = _$GGetHabitData_getHabit_comments_items_by;

  static void _initializeBuilder(
          GGetHabitData_getHabit_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetHabitData_getHabit_comments_items_by_avatar? get avatar;
  static Serializer<GGetHabitData_getHabit_comments_items_by> get serializer =>
      _$gGetHabitDataGetHabitCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments_items_by.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments_items_by_avatar
    implements
        Built<GGetHabitData_getHabit_comments_items_by_avatar,
            GGetHabitData_getHabit_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GGetHabitData_getHabit_comments_items_by_avatar._();

  factory GGetHabitData_getHabit_comments_items_by_avatar(
      [Function(GGetHabitData_getHabit_comments_items_by_avatarBuilder b)
          updates]) = _$GGetHabitData_getHabit_comments_items_by_avatar;

  static void _initializeBuilder(
          GGetHabitData_getHabit_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetHabitData_getHabit_comments_items_by_avatar>
      get serializer => _$gGetHabitDataGetHabitCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments_items_habit
    implements
        Built<GGetHabitData_getHabit_comments_items_habit,
            GGetHabitData_getHabit_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GGetHabitData_getHabit_comments_items_habit._();

  factory GGetHabitData_getHabit_comments_items_habit(
      [Function(GGetHabitData_getHabit_comments_items_habitBuilder b)
          updates]) = _$GGetHabitData_getHabit_comments_items_habit;

  static void _initializeBuilder(
          GGetHabitData_getHabit_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetHabitData_getHabit_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetHabitData_getHabit_comments_items_habit>
      get serializer => _$gGetHabitDataGetHabitCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments_items_habit.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments_items_habit_comments
    implements
        Built<GGetHabitData_getHabit_comments_items_habit_comments,
            GGetHabitData_getHabit_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GGetHabitData_getHabit_comments_items_habit_comments._();

  factory GGetHabitData_getHabit_comments_items_habit_comments(
      [Function(GGetHabitData_getHabit_comments_items_habit_commentsBuilder b)
          updates]) = _$GGetHabitData_getHabit_comments_items_habit_comments;

  static void _initializeBuilder(
          GGetHabitData_getHabit_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetHabitData_getHabit_comments_items_habit_comments_items>
      get items;
  static Serializer<GGetHabitData_getHabit_comments_items_habit_comments>
      get serializer =>
          _$gGetHabitDataGetHabitCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GGetHabitData_getHabit_comments_items_habit_comments_items
    implements
        Built<GGetHabitData_getHabit_comments_items_habit_comments_items,
            GGetHabitData_getHabit_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GGetHabitData_getHabit_comments_items_habit_comments_items._();

  factory GGetHabitData_getHabit_comments_items_habit_comments_items(
      [Function(
              GGetHabitData_getHabit_comments_items_habit_comments_itemsBuilder
                  b)
          updates]) = _$GGetHabitData_getHabit_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GGetHabitData_getHabit_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetHabitData_getHabit_comments_items_habit_comments_items>
      get serializer =>
          _$gGetHabitDataGetHabitCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetHabitData_getHabit_comments_items_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetHabitData_getHabit_comments_items_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetHabitData_getHabit_comments_items_habit_comments_items.serializer,
        json,
      );
}

abstract class GGetUserData
    implements Built<GGetUserData, GGetUserDataBuilder> {
  GGetUserData._();

  factory GGetUserData([Function(GGetUserDataBuilder b) updates]) =
      _$GGetUserData;

  static void _initializeBuilder(GGetUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserData_getUser? get getUser;
  static Serializer<GGetUserData> get serializer => _$gGetUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData.serializer,
        json,
      );
}

abstract class GGetUserData_getUser
    implements
        Built<GGetUserData_getUser, GGetUserData_getUserBuilder>,
        GAllPublicUserFields {
  GGetUserData_getUser._();

  factory GGetUserData_getUser(
          [Function(GGetUserData_getUserBuilder b) updates]) =
      _$GGetUserData_getUser;

  static void _initializeBuilder(GGetUserData_getUserBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetUserData_getUser_avatar? get avatar;
  @override
  GGetUserData_getUser_comments? get comments;
  @override
  GGetUserData_getUser_habits? get habits;
  static Serializer<GGetUserData_getUser> get serializer =>
      _$gGetUserDataGetUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_avatar
    implements
        Built<GGetUserData_getUser_avatar, GGetUserData_getUser_avatarBuilder>,
        GAllPublicUserFields_avatar {
  GGetUserData_getUser_avatar._();

  factory GGetUserData_getUser_avatar(
          [Function(GGetUserData_getUser_avatarBuilder b) updates]) =
      _$GGetUserData_getUser_avatar;

  static void _initializeBuilder(GGetUserData_getUser_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetUserData_getUser_avatar> get serializer =>
      _$gGetUserDataGetUserAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_avatar.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments
    implements
        Built<GGetUserData_getUser_comments,
            GGetUserData_getUser_commentsBuilder>,
        GAllPublicUserFields_comments {
  GGetUserData_getUser_comments._();

  factory GGetUserData_getUser_comments(
          [Function(GGetUserData_getUser_commentsBuilder b) updates]) =
      _$GGetUserData_getUser_comments;

  static void _initializeBuilder(GGetUserData_getUser_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetUserData_getUser_comments_items> get items;
  static Serializer<GGetUserData_getUser_comments> get serializer =>
      _$gGetUserDataGetUserCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments_items
    implements
        Built<GGetUserData_getUser_comments_items,
            GGetUserData_getUser_comments_itemsBuilder>,
        GAllPublicUserFields_comments_items,
        GAllCommentFields {
  GGetUserData_getUser_comments_items._();

  factory GGetUserData_getUser_comments_items(
          [Function(GGetUserData_getUser_comments_itemsBuilder b) updates]) =
      _$GGetUserData_getUser_comments_items;

  static void _initializeBuilder(
          GGetUserData_getUser_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GGetUserData_getUser_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GGetUserData_getUser_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetUserData_getUser_comments_items> get serializer =>
      _$gGetUserDataGetUserCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments_items.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments_items_by
    implements
        Built<GGetUserData_getUser_comments_items_by,
            GGetUserData_getUser_comments_items_byBuilder>,
        GAllPublicUserFields_comments_items_by,
        GAllCommentFields_by {
  GGetUserData_getUser_comments_items_by._();

  factory GGetUserData_getUser_comments_items_by(
          [Function(GGetUserData_getUser_comments_items_byBuilder b) updates]) =
      _$GGetUserData_getUser_comments_items_by;

  static void _initializeBuilder(
          GGetUserData_getUser_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetUserData_getUser_comments_items_by_avatar? get avatar;
  static Serializer<GGetUserData_getUser_comments_items_by> get serializer =>
      _$gGetUserDataGetUserCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments_items_by.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments_items_by_avatar
    implements
        Built<GGetUserData_getUser_comments_items_by_avatar,
            GGetUserData_getUser_comments_items_by_avatarBuilder>,
        GAllPublicUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GGetUserData_getUser_comments_items_by_avatar._();

  factory GGetUserData_getUser_comments_items_by_avatar(
      [Function(GGetUserData_getUser_comments_items_by_avatarBuilder b)
          updates]) = _$GGetUserData_getUser_comments_items_by_avatar;

  static void _initializeBuilder(
          GGetUserData_getUser_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetUserData_getUser_comments_items_by_avatar>
      get serializer => _$gGetUserDataGetUserCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments_items_habit
    implements
        Built<GGetUserData_getUser_comments_items_habit,
            GGetUserData_getUser_comments_items_habitBuilder>,
        GAllPublicUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GGetUserData_getUser_comments_items_habit._();

  factory GGetUserData_getUser_comments_items_habit(
      [Function(GGetUserData_getUser_comments_items_habitBuilder b)
          updates]) = _$GGetUserData_getUser_comments_items_habit;

  static void _initializeBuilder(
          GGetUserData_getUser_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetUserData_getUser_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetUserData_getUser_comments_items_habit> get serializer =>
      _$gGetUserDataGetUserCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments_items_habit.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments_items_habit_comments
    implements
        Built<GGetUserData_getUser_comments_items_habit_comments,
            GGetUserData_getUser_comments_items_habit_commentsBuilder>,
        GAllPublicUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GGetUserData_getUser_comments_items_habit_comments._();

  factory GGetUserData_getUser_comments_items_habit_comments(
      [Function(GGetUserData_getUser_comments_items_habit_commentsBuilder b)
          updates]) = _$GGetUserData_getUser_comments_items_habit_comments;

  static void _initializeBuilder(
          GGetUserData_getUser_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetUserData_getUser_comments_items_habit_comments_items> get items;
  static Serializer<GGetUserData_getUser_comments_items_habit_comments>
      get serializer =>
          _$gGetUserDataGetUserCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_comments_items_habit_comments_items
    implements
        Built<GGetUserData_getUser_comments_items_habit_comments_items,
            GGetUserData_getUser_comments_items_habit_comments_itemsBuilder>,
        GAllPublicUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GGetUserData_getUser_comments_items_habit_comments_items._();

  factory GGetUserData_getUser_comments_items_habit_comments_items(
      [Function(
              GGetUserData_getUser_comments_items_habit_comments_itemsBuilder b)
          updates]) = _$GGetUserData_getUser_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GGetUserData_getUser_comments_items_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetUserData_getUser_comments_items_habit_comments_items>
      get serializer =>
          _$gGetUserDataGetUserCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_comments_items_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_comments_items_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_comments_items_habit_comments_items.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits
    implements
        Built<GGetUserData_getUser_habits, GGetUserData_getUser_habitsBuilder>,
        GAllPublicUserFields_habits {
  GGetUserData_getUser_habits._();

  factory GGetUserData_getUser_habits(
          [Function(GGetUserData_getUser_habitsBuilder b) updates]) =
      _$GGetUserData_getUser_habits;

  static void _initializeBuilder(GGetUserData_getUser_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetUserData_getUser_habits_items> get items;
  static Serializer<GGetUserData_getUser_habits> get serializer =>
      _$gGetUserDataGetUserHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items
    implements
        Built<GGetUserData_getUser_habits_items,
            GGetUserData_getUser_habits_itemsBuilder>,
        GAllPublicUserFields_habits_items,
        GAllHabitFields {
  GGetUserData_getUser_habits_items._();

  factory GGetUserData_getUser_habits_items(
          [Function(GGetUserData_getUser_habits_itemsBuilder b) updates]) =
      _$GGetUserData_getUser_habits_items;

  static void _initializeBuilder(GGetUserData_getUser_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetUserData_getUser_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetUserData_getUser_habits_items> get serializer =>
      _$gGetUserDataGetUserHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits_items.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items_comments
    implements
        Built<GGetUserData_getUser_habits_items_comments,
            GGetUserData_getUser_habits_items_commentsBuilder>,
        GAllPublicUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GGetUserData_getUser_habits_items_comments._();

  factory GGetUserData_getUser_habits_items_comments(
      [Function(GGetUserData_getUser_habits_items_commentsBuilder b)
          updates]) = _$GGetUserData_getUser_habits_items_comments;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetUserData_getUser_habits_items_comments_items> get items;
  static Serializer<GGetUserData_getUser_habits_items_comments>
      get serializer => _$gGetUserDataGetUserHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits_items_comments.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items_comments_items
    implements
        Built<GGetUserData_getUser_habits_items_comments_items,
            GGetUserData_getUser_habits_items_comments_itemsBuilder>,
        GAllPublicUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GGetUserData_getUser_habits_items_comments_items._();

  factory GGetUserData_getUser_habits_items_comments_items(
      [Function(GGetUserData_getUser_habits_items_comments_itemsBuilder b)
          updates]) = _$GGetUserData_getUser_habits_items_comments_items;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GGetUserData_getUser_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GGetUserData_getUser_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetUserData_getUser_habits_items_comments_items>
      get serializer => _$gGetUserDataGetUserHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits_items_comments_items.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items_comments_items_by
    implements
        Built<GGetUserData_getUser_habits_items_comments_items_by,
            GGetUserData_getUser_habits_items_comments_items_byBuilder>,
        GAllPublicUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GGetUserData_getUser_habits_items_comments_items_by._();

  factory GGetUserData_getUser_habits_items_comments_items_by(
      [Function(GGetUserData_getUser_habits_items_comments_items_byBuilder b)
          updates]) = _$GGetUserData_getUser_habits_items_comments_items_by;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetUserData_getUser_habits_items_comments_items_by_avatar? get avatar;
  static Serializer<GGetUserData_getUser_habits_items_comments_items_by>
      get serializer =>
          _$gGetUserDataGetUserHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items_comments_items_by_avatar
    implements
        Built<GGetUserData_getUser_habits_items_comments_items_by_avatar,
            GGetUserData_getUser_habits_items_comments_items_by_avatarBuilder>,
        GAllPublicUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GGetUserData_getUser_habits_items_comments_items_by_avatar._();

  factory GGetUserData_getUser_habits_items_comments_items_by_avatar(
      [Function(
              GGetUserData_getUser_habits_items_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GGetUserData_getUser_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetUserData_getUser_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gGetUserDataGetUserHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits_items_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items_comments_items_habit
    implements
        Built<GGetUserData_getUser_habits_items_comments_items_habit,
            GGetUserData_getUser_habits_items_comments_items_habitBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GGetUserData_getUser_habits_items_comments_items_habit._();

  factory GGetUserData_getUser_habits_items_comments_items_habit(
      [Function(GGetUserData_getUser_habits_items_comments_items_habitBuilder b)
          updates]) = _$GGetUserData_getUser_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetUserData_getUser_habits_items_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetUserData_getUser_habits_items_comments_items_habit>
      get serializer =>
          _$gGetUserDataGetUserHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserData_getUser_habits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GGetUserData_getUser_habits_items_comments_items_habit_comments
    implements
        Built<GGetUserData_getUser_habits_items_comments_items_habit_comments,
            GGetUserData_getUser_habits_items_comments_items_habit_commentsBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GGetUserData_getUser_habits_items_comments_items_habit_comments._();

  factory GGetUserData_getUser_habits_items_comments_items_habit_comments(
          [Function(
                  GGetUserData_getUser_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GGetUserData_getUser_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GGetUserData_getUser_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GGetUserData_getUser_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gGetUserDataGetUserHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GGetUserData_getUser_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GGetUserData_getUser_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GGetUserData_getUser_habits_items_comments_items_habit_comments_items,
            GGetUserData_getUser_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GGetUserData_getUser_habits_items_comments_items_habit_comments_items._();

  factory GGetUserData_getUser_habits_items_comments_items_habit_comments_items(
          [Function(
                  GGetUserData_getUser_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GGetUserData_getUser_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GGetUserData_getUser_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GGetUserData_getUser_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gGetUserDataGetUserHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserData_getUser_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserData_getUser_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GGetUserData_getUser_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GGetSelfData
    implements Built<GGetSelfData, GGetSelfDataBuilder> {
  GGetSelfData._();

  factory GGetSelfData([Function(GGetSelfDataBuilder b) updates]) =
      _$GGetSelfData;

  static void _initializeBuilder(GGetSelfDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetSelfData_getUser? get getUser;
  static Serializer<GGetSelfData> get serializer => _$gGetSelfDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser
    implements
        Built<GGetSelfData_getUser, GGetSelfData_getUserBuilder>,
        GAllPrivateUserFields {
  GGetSelfData_getUser._();

  factory GGetSelfData_getUser(
          [Function(GGetSelfData_getUserBuilder b) updates]) =
      _$GGetSelfData_getUser;

  static void _initializeBuilder(GGetSelfData_getUserBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetSelfData_getUser_avatar? get avatar;
  @override
  GGetSelfData_getUser_comments? get comments;
  @override
  GGetSelfData_getUser_habits? get habits;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GGetSelfData_getUser> get serializer =>
      _$gGetSelfDataGetUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_avatar
    implements
        Built<GGetSelfData_getUser_avatar, GGetSelfData_getUser_avatarBuilder>,
        GAllPrivateUserFields_avatar {
  GGetSelfData_getUser_avatar._();

  factory GGetSelfData_getUser_avatar(
          [Function(GGetSelfData_getUser_avatarBuilder b) updates]) =
      _$GGetSelfData_getUser_avatar;

  static void _initializeBuilder(GGetSelfData_getUser_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetSelfData_getUser_avatar> get serializer =>
      _$gGetSelfDataGetUserAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_avatar.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments
    implements
        Built<GGetSelfData_getUser_comments,
            GGetSelfData_getUser_commentsBuilder>,
        GAllPrivateUserFields_comments {
  GGetSelfData_getUser_comments._();

  factory GGetSelfData_getUser_comments(
          [Function(GGetSelfData_getUser_commentsBuilder b) updates]) =
      _$GGetSelfData_getUser_comments;

  static void _initializeBuilder(GGetSelfData_getUser_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetSelfData_getUser_comments_items> get items;
  static Serializer<GGetSelfData_getUser_comments> get serializer =>
      _$gGetSelfDataGetUserCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments_items
    implements
        Built<GGetSelfData_getUser_comments_items,
            GGetSelfData_getUser_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items,
        GAllCommentFields {
  GGetSelfData_getUser_comments_items._();

  factory GGetSelfData_getUser_comments_items(
          [Function(GGetSelfData_getUser_comments_itemsBuilder b) updates]) =
      _$GGetSelfData_getUser_comments_items;

  static void _initializeBuilder(
          GGetSelfData_getUser_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GGetSelfData_getUser_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GGetSelfData_getUser_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetSelfData_getUser_comments_items> get serializer =>
      _$gGetSelfDataGetUserCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments_items.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments_items_by
    implements
        Built<GGetSelfData_getUser_comments_items_by,
            GGetSelfData_getUser_comments_items_byBuilder>,
        GAllPrivateUserFields_comments_items_by,
        GAllCommentFields_by {
  GGetSelfData_getUser_comments_items_by._();

  factory GGetSelfData_getUser_comments_items_by(
          [Function(GGetSelfData_getUser_comments_items_byBuilder b) updates]) =
      _$GGetSelfData_getUser_comments_items_by;

  static void _initializeBuilder(
          GGetSelfData_getUser_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetSelfData_getUser_comments_items_by_avatar? get avatar;
  static Serializer<GGetSelfData_getUser_comments_items_by> get serializer =>
      _$gGetSelfDataGetUserCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments_items_by.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments_items_by_avatar
    implements
        Built<GGetSelfData_getUser_comments_items_by_avatar,
            GGetSelfData_getUser_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GGetSelfData_getUser_comments_items_by_avatar._();

  factory GGetSelfData_getUser_comments_items_by_avatar(
      [Function(GGetSelfData_getUser_comments_items_by_avatarBuilder b)
          updates]) = _$GGetSelfData_getUser_comments_items_by_avatar;

  static void _initializeBuilder(
          GGetSelfData_getUser_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetSelfData_getUser_comments_items_by_avatar>
      get serializer => _$gGetSelfDataGetUserCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments_items_habit
    implements
        Built<GGetSelfData_getUser_comments_items_habit,
            GGetSelfData_getUser_comments_items_habitBuilder>,
        GAllPrivateUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GGetSelfData_getUser_comments_items_habit._();

  factory GGetSelfData_getUser_comments_items_habit(
      [Function(GGetSelfData_getUser_comments_items_habitBuilder b)
          updates]) = _$GGetSelfData_getUser_comments_items_habit;

  static void _initializeBuilder(
          GGetSelfData_getUser_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetSelfData_getUser_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetSelfData_getUser_comments_items_habit> get serializer =>
      _$gGetSelfDataGetUserCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments_items_habit.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments_items_habit_comments
    implements
        Built<GGetSelfData_getUser_comments_items_habit_comments,
            GGetSelfData_getUser_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GGetSelfData_getUser_comments_items_habit_comments._();

  factory GGetSelfData_getUser_comments_items_habit_comments(
      [Function(GGetSelfData_getUser_comments_items_habit_commentsBuilder b)
          updates]) = _$GGetSelfData_getUser_comments_items_habit_comments;

  static void _initializeBuilder(
          GGetSelfData_getUser_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetSelfData_getUser_comments_items_habit_comments_items> get items;
  static Serializer<GGetSelfData_getUser_comments_items_habit_comments>
      get serializer =>
          _$gGetSelfDataGetUserCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_comments_items_habit_comments_items
    implements
        Built<GGetSelfData_getUser_comments_items_habit_comments_items,
            GGetSelfData_getUser_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GGetSelfData_getUser_comments_items_habit_comments_items._();

  factory GGetSelfData_getUser_comments_items_habit_comments_items(
      [Function(
              GGetSelfData_getUser_comments_items_habit_comments_itemsBuilder b)
          updates]) = _$GGetSelfData_getUser_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GGetSelfData_getUser_comments_items_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetSelfData_getUser_comments_items_habit_comments_items>
      get serializer =>
          _$gGetSelfDataGetUserCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_comments_items_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_comments_items_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_comments_items_habit_comments_items.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits
    implements
        Built<GGetSelfData_getUser_habits, GGetSelfData_getUser_habitsBuilder>,
        GAllPrivateUserFields_habits {
  GGetSelfData_getUser_habits._();

  factory GGetSelfData_getUser_habits(
          [Function(GGetSelfData_getUser_habitsBuilder b) updates]) =
      _$GGetSelfData_getUser_habits;

  static void _initializeBuilder(GGetSelfData_getUser_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetSelfData_getUser_habits_items> get items;
  static Serializer<GGetSelfData_getUser_habits> get serializer =>
      _$gGetSelfDataGetUserHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items
    implements
        Built<GGetSelfData_getUser_habits_items,
            GGetSelfData_getUser_habits_itemsBuilder>,
        GAllPrivateUserFields_habits_items,
        GAllHabitFields {
  GGetSelfData_getUser_habits_items._();

  factory GGetSelfData_getUser_habits_items(
          [Function(GGetSelfData_getUser_habits_itemsBuilder b) updates]) =
      _$GGetSelfData_getUser_habits_items;

  static void _initializeBuilder(GGetSelfData_getUser_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetSelfData_getUser_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetSelfData_getUser_habits_items> get serializer =>
      _$gGetSelfDataGetUserHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits_items.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items_comments
    implements
        Built<GGetSelfData_getUser_habits_items_comments,
            GGetSelfData_getUser_habits_items_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GGetSelfData_getUser_habits_items_comments._();

  factory GGetSelfData_getUser_habits_items_comments(
      [Function(GGetSelfData_getUser_habits_items_commentsBuilder b)
          updates]) = _$GGetSelfData_getUser_habits_items_comments;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetSelfData_getUser_habits_items_comments_items> get items;
  static Serializer<GGetSelfData_getUser_habits_items_comments>
      get serializer => _$gGetSelfDataGetUserHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits_items_comments.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items_comments_items
    implements
        Built<GGetSelfData_getUser_habits_items_comments_items,
            GGetSelfData_getUser_habits_items_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GGetSelfData_getUser_habits_items_comments_items._();

  factory GGetSelfData_getUser_habits_items_comments_items(
      [Function(GGetSelfData_getUser_habits_items_comments_itemsBuilder b)
          updates]) = _$GGetSelfData_getUser_habits_items_comments_items;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GGetSelfData_getUser_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GGetSelfData_getUser_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetSelfData_getUser_habits_items_comments_items>
      get serializer => _$gGetSelfDataGetUserHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits_items_comments_items.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items_comments_items_by
    implements
        Built<GGetSelfData_getUser_habits_items_comments_items_by,
            GGetSelfData_getUser_habits_items_comments_items_byBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GGetSelfData_getUser_habits_items_comments_items_by._();

  factory GGetSelfData_getUser_habits_items_comments_items_by(
      [Function(GGetSelfData_getUser_habits_items_comments_items_byBuilder b)
          updates]) = _$GGetSelfData_getUser_habits_items_comments_items_by;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetSelfData_getUser_habits_items_comments_items_by_avatar? get avatar;
  static Serializer<GGetSelfData_getUser_habits_items_comments_items_by>
      get serializer =>
          _$gGetSelfDataGetUserHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items_comments_items_by_avatar
    implements
        Built<GGetSelfData_getUser_habits_items_comments_items_by_avatar,
            GGetSelfData_getUser_habits_items_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GGetSelfData_getUser_habits_items_comments_items_by_avatar._();

  factory GGetSelfData_getUser_habits_items_comments_items_by_avatar(
      [Function(
              GGetSelfData_getUser_habits_items_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GGetSelfData_getUser_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetSelfData_getUser_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gGetSelfDataGetUserHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits_items_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items_comments_items_habit
    implements
        Built<GGetSelfData_getUser_habits_items_comments_items_habit,
            GGetSelfData_getUser_habits_items_comments_items_habitBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GGetSelfData_getUser_habits_items_comments_items_habit._();

  factory GGetSelfData_getUser_habits_items_comments_items_habit(
      [Function(GGetSelfData_getUser_habits_items_comments_items_habitBuilder b)
          updates]) = _$GGetSelfData_getUser_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetSelfData_getUser_habits_items_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetSelfData_getUser_habits_items_comments_items_habit>
      get serializer =>
          _$gGetSelfDataGetUserHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetSelfData_getUser_habits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GGetSelfData_getUser_habits_items_comments_items_habit_comments
    implements
        Built<GGetSelfData_getUser_habits_items_comments_items_habit_comments,
            GGetSelfData_getUser_habits_items_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GGetSelfData_getUser_habits_items_comments_items_habit_comments._();

  factory GGetSelfData_getUser_habits_items_comments_items_habit_comments(
          [Function(
                  GGetSelfData_getUser_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GGetSelfData_getUser_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GGetSelfData_getUser_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GGetSelfData_getUser_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gGetSelfDataGetUserHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GGetSelfData_getUser_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GGetSelfData_getUser_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GGetSelfData_getUser_habits_items_comments_items_habit_comments_items,
            GGetSelfData_getUser_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GGetSelfData_getUser_habits_items_comments_items_habit_comments_items._();

  factory GGetSelfData_getUser_habits_items_comments_items_habit_comments_items(
          [Function(
                  GGetSelfData_getUser_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GGetSelfData_getUser_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GGetSelfData_getUser_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GGetSelfData_getUser_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gGetSelfDataGetUserHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetSelfData_getUser_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetSelfData_getUser_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GGetSelfData_getUser_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GGetCommentData
    implements Built<GGetCommentData, GGetCommentDataBuilder> {
  GGetCommentData._();

  factory GGetCommentData([Function(GGetCommentDataBuilder b) updates]) =
      _$GGetCommentData;

  static void _initializeBuilder(GGetCommentDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCommentData_getComment? get getComment;
  static Serializer<GGetCommentData> get serializer =>
      _$gGetCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData.serializer,
        json,
      );
}

abstract class GGetCommentData_getComment
    implements
        Built<GGetCommentData_getComment, GGetCommentData_getCommentBuilder>,
        GAllCommentFields {
  GGetCommentData_getComment._();

  factory GGetCommentData_getComment(
          [Function(GGetCommentData_getCommentBuilder b) updates]) =
      _$GGetCommentData_getComment;

  static void _initializeBuilder(GGetCommentData_getCommentBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GGetCommentData_getComment_by? get by;
  @override
  String? get habitId;
  @override
  GGetCommentData_getComment_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetCommentData_getComment> get serializer =>
      _$gGetCommentDataGetCommentSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData_getComment.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData_getComment? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData_getComment.serializer,
        json,
      );
}

abstract class GGetCommentData_getComment_by
    implements
        Built<GGetCommentData_getComment_by,
            GGetCommentData_getComment_byBuilder>,
        GAllCommentFields_by {
  GGetCommentData_getComment_by._();

  factory GGetCommentData_getComment_by(
          [Function(GGetCommentData_getComment_byBuilder b) updates]) =
      _$GGetCommentData_getComment_by;

  static void _initializeBuilder(GGetCommentData_getComment_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GGetCommentData_getComment_by_avatar? get avatar;
  static Serializer<GGetCommentData_getComment_by> get serializer =>
      _$gGetCommentDataGetCommentBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData_getComment_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData_getComment_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData_getComment_by.serializer,
        json,
      );
}

abstract class GGetCommentData_getComment_by_avatar
    implements
        Built<GGetCommentData_getComment_by_avatar,
            GGetCommentData_getComment_by_avatarBuilder>,
        GAllCommentFields_by_avatar {
  GGetCommentData_getComment_by_avatar._();

  factory GGetCommentData_getComment_by_avatar(
          [Function(GGetCommentData_getComment_by_avatarBuilder b) updates]) =
      _$GGetCommentData_getComment_by_avatar;

  static void _initializeBuilder(
          GGetCommentData_getComment_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GGetCommentData_getComment_by_avatar> get serializer =>
      _$gGetCommentDataGetCommentByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData_getComment_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData_getComment_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData_getComment_by_avatar.serializer,
        json,
      );
}

abstract class GGetCommentData_getComment_habit
    implements
        Built<GGetCommentData_getComment_habit,
            GGetCommentData_getComment_habitBuilder>,
        GAllCommentFields_habit {
  GGetCommentData_getComment_habit._();

  factory GGetCommentData_getComment_habit(
          [Function(GGetCommentData_getComment_habitBuilder b) updates]) =
      _$GGetCommentData_getComment_habit;

  static void _initializeBuilder(GGetCommentData_getComment_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GGetCommentData_getComment_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GGetCommentData_getComment_habit> get serializer =>
      _$gGetCommentDataGetCommentHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData_getComment_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData_getComment_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData_getComment_habit.serializer,
        json,
      );
}

abstract class GGetCommentData_getComment_habit_comments
    implements
        Built<GGetCommentData_getComment_habit_comments,
            GGetCommentData_getComment_habit_commentsBuilder>,
        GAllCommentFields_habit_comments {
  GGetCommentData_getComment_habit_comments._();

  factory GGetCommentData_getComment_habit_comments(
      [Function(GGetCommentData_getComment_habit_commentsBuilder b)
          updates]) = _$GGetCommentData_getComment_habit_comments;

  static void _initializeBuilder(
          GGetCommentData_getComment_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GGetCommentData_getComment_habit_comments_items> get items;
  static Serializer<GGetCommentData_getComment_habit_comments> get serializer =>
      _$gGetCommentDataGetCommentHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData_getComment_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData_getComment_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData_getComment_habit_comments.serializer,
        json,
      );
}

abstract class GGetCommentData_getComment_habit_comments_items
    implements
        Built<GGetCommentData_getComment_habit_comments_items,
            GGetCommentData_getComment_habit_comments_itemsBuilder>,
        GAllCommentFields_habit_comments_items {
  GGetCommentData_getComment_habit_comments_items._();

  factory GGetCommentData_getComment_habit_comments_items(
      [Function(GGetCommentData_getComment_habit_comments_itemsBuilder b)
          updates]) = _$GGetCommentData_getComment_habit_comments_items;

  static void _initializeBuilder(
          GGetCommentData_getComment_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GGetCommentData_getComment_habit_comments_items>
      get serializer => _$gGetCommentDataGetCommentHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCommentData_getComment_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetCommentData_getComment_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCommentData_getComment_habit_comments_items.serializer,
        json,
      );
}

abstract class GSubscribeToUserData
    implements Built<GSubscribeToUserData, GSubscribeToUserDataBuilder> {
  GSubscribeToUserData._();

  factory GSubscribeToUserData(
          [Function(GSubscribeToUserDataBuilder b) updates]) =
      _$GSubscribeToUserData;

  static void _initializeBuilder(GSubscribeToUserDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSubscribeToUserData_subscribeToUser? get subscribeToUser;
  static Serializer<GSubscribeToUserData> get serializer =>
      _$gSubscribeToUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser
    implements
        Built<GSubscribeToUserData_subscribeToUser,
            GSubscribeToUserData_subscribeToUserBuilder>,
        GAllPrivateUserFields {
  GSubscribeToUserData_subscribeToUser._();

  factory GSubscribeToUserData_subscribeToUser(
          [Function(GSubscribeToUserData_subscribeToUserBuilder b) updates]) =
      _$GSubscribeToUserData_subscribeToUser;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUserBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSubscribeToUserData_subscribeToUser_avatar? get avatar;
  @override
  GSubscribeToUserData_subscribeToUser_comments? get comments;
  @override
  GSubscribeToUserData_subscribeToUser_habits? get habits;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GSubscribeToUserData_subscribeToUser> get serializer =>
      _$gSubscribeToUserDataSubscribeToUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_avatar
    implements
        Built<GSubscribeToUserData_subscribeToUser_avatar,
            GSubscribeToUserData_subscribeToUser_avatarBuilder>,
        GAllPrivateUserFields_avatar {
  GSubscribeToUserData_subscribeToUser_avatar._();

  factory GSubscribeToUserData_subscribeToUser_avatar(
      [Function(GSubscribeToUserData_subscribeToUser_avatarBuilder b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_avatar;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GSubscribeToUserData_subscribeToUser_avatar>
      get serializer => _$gSubscribeToUserDataSubscribeToUserAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_avatar.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_comments
    implements
        Built<GSubscribeToUserData_subscribeToUser_comments,
            GSubscribeToUserData_subscribeToUser_commentsBuilder>,
        GAllPrivateUserFields_comments {
  GSubscribeToUserData_subscribeToUser_comments._();

  factory GSubscribeToUserData_subscribeToUser_comments(
      [Function(GSubscribeToUserData_subscribeToUser_commentsBuilder b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_comments;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSubscribeToUserData_subscribeToUser_comments_items> get items;
  static Serializer<GSubscribeToUserData_subscribeToUser_comments>
      get serializer => _$gSubscribeToUserDataSubscribeToUserCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_comments.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_comments_items
    implements
        Built<GSubscribeToUserData_subscribeToUser_comments_items,
            GSubscribeToUserData_subscribeToUser_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items,
        GAllCommentFields {
  GSubscribeToUserData_subscribeToUser_comments_items._();

  factory GSubscribeToUserData_subscribeToUser_comments_items(
      [Function(GSubscribeToUserData_subscribeToUser_comments_itemsBuilder b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_comments_items;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GSubscribeToUserData_subscribeToUser_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GSubscribeToUserData_subscribeToUser_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GSubscribeToUserData_subscribeToUser_comments_items>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_comments_items_by
    implements
        Built<GSubscribeToUserData_subscribeToUser_comments_items_by,
            GSubscribeToUserData_subscribeToUser_comments_items_byBuilder>,
        GAllPrivateUserFields_comments_items_by,
        GAllCommentFields_by {
  GSubscribeToUserData_subscribeToUser_comments_items_by._();

  factory GSubscribeToUserData_subscribeToUser_comments_items_by(
      [Function(GSubscribeToUserData_subscribeToUser_comments_items_byBuilder b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_comments_items_by;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSubscribeToUserData_subscribeToUser_comments_items_by_avatar? get avatar;
  static Serializer<GSubscribeToUserData_subscribeToUser_comments_items_by>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_by.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_comments_items_by_avatar
    implements
        Built<GSubscribeToUserData_subscribeToUser_comments_items_by_avatar,
            GSubscribeToUserData_subscribeToUser_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GSubscribeToUserData_subscribeToUser_comments_items_by_avatar._();

  factory GSubscribeToUserData_subscribeToUser_comments_items_by_avatar(
          [Function(
                  GSubscribeToUserData_subscribeToUser_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_comments_items_by_avatar;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_comments_items_by_avatar>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_comments_items_habit
    implements
        Built<GSubscribeToUserData_subscribeToUser_comments_items_habit,
            GSubscribeToUserData_subscribeToUser_comments_items_habitBuilder>,
        GAllPrivateUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GSubscribeToUserData_subscribeToUser_comments_items_habit._();

  factory GSubscribeToUserData_subscribeToUser_comments_items_habit(
      [Function(
              GSubscribeToUserData_subscribeToUser_comments_items_habitBuilder
                  b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_comments_items_habit;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSubscribeToUserData_subscribeToUser_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GSubscribeToUserData_subscribeToUser_comments_items_habit>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_habit.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_comments_items_habit_comments
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_comments_items_habit_comments,
            GSubscribeToUserData_subscribeToUser_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GSubscribeToUserData_subscribeToUser_comments_items_habit_comments._();

  factory GSubscribeToUserData_subscribeToUser_comments_items_habit_comments(
          [Function(
                  GSubscribeToUserData_subscribeToUser_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_comments_items_habit_comments;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_comments_items_habit_comments>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items,
            GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items._();

  factory GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items(
          [Function(
                  GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_habits
    implements
        Built<GSubscribeToUserData_subscribeToUser_habits,
            GSubscribeToUserData_subscribeToUser_habitsBuilder>,
        GAllPrivateUserFields_habits {
  GSubscribeToUserData_subscribeToUser_habits._();

  factory GSubscribeToUserData_subscribeToUser_habits(
      [Function(GSubscribeToUserData_subscribeToUser_habitsBuilder b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_habits;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSubscribeToUserData_subscribeToUser_habits_items> get items;
  static Serializer<GSubscribeToUserData_subscribeToUser_habits>
      get serializer => _$gSubscribeToUserDataSubscribeToUserHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_habits.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items
    implements
        Built<GSubscribeToUserData_subscribeToUser_habits_items,
            GSubscribeToUserData_subscribeToUser_habits_itemsBuilder>,
        GAllPrivateUserFields_habits_items,
        GAllHabitFields {
  GSubscribeToUserData_subscribeToUser_habits_items._();

  factory GSubscribeToUserData_subscribeToUser_habits_items(
      [Function(GSubscribeToUserData_subscribeToUser_habits_itemsBuilder b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_habits_items;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSubscribeToUserData_subscribeToUser_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GSubscribeToUserData_subscribeToUser_habits_items>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments
    implements
        Built<GSubscribeToUserData_subscribeToUser_habits_items_comments,
            GSubscribeToUserData_subscribeToUser_habits_items_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GSubscribeToUserData_subscribeToUser_habits_items_comments._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments(
      [Function(
              GSubscribeToUserData_subscribeToUser_habits_items_commentsBuilder
                  b)
          updates]) = _$GSubscribeToUserData_subscribeToUser_habits_items_comments;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSubscribeToUserData_subscribeToUser_habits_items_comments_items>
      get items;
  static Serializer<GSubscribeToUserData_subscribeToUser_habits_items_comments>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments.serializer,
        json,
      );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments_items
    implements
        Built<GSubscribeToUserData_subscribeToUser_habits_items_comments_items,
            GSubscribeToUserData_subscribeToUser_habits_items_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments_items(
          [Function(
                  GSubscribeToUserData_subscribeToUser_habits_items_comments_itemsBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_habits_items_comments_items;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit?
      get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by,
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_byBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by(
          [Function(
                  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_byBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_byBuilder
              b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar?
      get avatar;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar,
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar(
          [Function(
                  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit,
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habitBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit(
          [Function(
                  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habitBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habitBuilder
              b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments,
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments(
          [Function(
                  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items,
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items._();

  factory GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items(
          [Function(
                  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gSubscribeToUserDataSubscribeToUserHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GOnCreateCommentData
    implements Built<GOnCreateCommentData, GOnCreateCommentDataBuilder> {
  GOnCreateCommentData._();

  factory GOnCreateCommentData(
          [Function(GOnCreateCommentDataBuilder b) updates]) =
      _$GOnCreateCommentData;

  static void _initializeBuilder(GOnCreateCommentDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnCreateCommentData_onCreateComment? get onCreateComment;
  static Serializer<GOnCreateCommentData> get serializer =>
      _$gOnCreateCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData.serializer,
        json,
      );
}

abstract class GOnCreateCommentData_onCreateComment
    implements
        Built<GOnCreateCommentData_onCreateComment,
            GOnCreateCommentData_onCreateCommentBuilder>,
        GAllCommentFields {
  GOnCreateCommentData_onCreateComment._();

  factory GOnCreateCommentData_onCreateComment(
          [Function(GOnCreateCommentData_onCreateCommentBuilder b) updates]) =
      _$GOnCreateCommentData_onCreateComment;

  static void _initializeBuilder(
          GOnCreateCommentData_onCreateCommentBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GOnCreateCommentData_onCreateComment_by? get by;
  @override
  String? get habitId;
  @override
  GOnCreateCommentData_onCreateComment_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GOnCreateCommentData_onCreateComment> get serializer =>
      _$gOnCreateCommentDataOnCreateCommentSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData_onCreateComment.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData_onCreateComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData_onCreateComment.serializer,
        json,
      );
}

abstract class GOnCreateCommentData_onCreateComment_by
    implements
        Built<GOnCreateCommentData_onCreateComment_by,
            GOnCreateCommentData_onCreateComment_byBuilder>,
        GAllCommentFields_by {
  GOnCreateCommentData_onCreateComment_by._();

  factory GOnCreateCommentData_onCreateComment_by(
      [Function(GOnCreateCommentData_onCreateComment_byBuilder b)
          updates]) = _$GOnCreateCommentData_onCreateComment_by;

  static void _initializeBuilder(
          GOnCreateCommentData_onCreateComment_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GOnCreateCommentData_onCreateComment_by_avatar? get avatar;
  static Serializer<GOnCreateCommentData_onCreateComment_by> get serializer =>
      _$gOnCreateCommentDataOnCreateCommentBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData_onCreateComment_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData_onCreateComment_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData_onCreateComment_by.serializer,
        json,
      );
}

abstract class GOnCreateCommentData_onCreateComment_by_avatar
    implements
        Built<GOnCreateCommentData_onCreateComment_by_avatar,
            GOnCreateCommentData_onCreateComment_by_avatarBuilder>,
        GAllCommentFields_by_avatar {
  GOnCreateCommentData_onCreateComment_by_avatar._();

  factory GOnCreateCommentData_onCreateComment_by_avatar(
      [Function(GOnCreateCommentData_onCreateComment_by_avatarBuilder b)
          updates]) = _$GOnCreateCommentData_onCreateComment_by_avatar;

  static void _initializeBuilder(
          GOnCreateCommentData_onCreateComment_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GOnCreateCommentData_onCreateComment_by_avatar>
      get serializer => _$gOnCreateCommentDataOnCreateCommentByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData_onCreateComment_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData_onCreateComment_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData_onCreateComment_by_avatar.serializer,
        json,
      );
}

abstract class GOnCreateCommentData_onCreateComment_habit
    implements
        Built<GOnCreateCommentData_onCreateComment_habit,
            GOnCreateCommentData_onCreateComment_habitBuilder>,
        GAllCommentFields_habit {
  GOnCreateCommentData_onCreateComment_habit._();

  factory GOnCreateCommentData_onCreateComment_habit(
      [Function(GOnCreateCommentData_onCreateComment_habitBuilder b)
          updates]) = _$GOnCreateCommentData_onCreateComment_habit;

  static void _initializeBuilder(
          GOnCreateCommentData_onCreateComment_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GOnCreateCommentData_onCreateComment_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GOnCreateCommentData_onCreateComment_habit>
      get serializer => _$gOnCreateCommentDataOnCreateCommentHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData_onCreateComment_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData_onCreateComment_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData_onCreateComment_habit.serializer,
        json,
      );
}

abstract class GOnCreateCommentData_onCreateComment_habit_comments
    implements
        Built<GOnCreateCommentData_onCreateComment_habit_comments,
            GOnCreateCommentData_onCreateComment_habit_commentsBuilder>,
        GAllCommentFields_habit_comments {
  GOnCreateCommentData_onCreateComment_habit_comments._();

  factory GOnCreateCommentData_onCreateComment_habit_comments(
      [Function(GOnCreateCommentData_onCreateComment_habit_commentsBuilder b)
          updates]) = _$GOnCreateCommentData_onCreateComment_habit_comments;

  static void _initializeBuilder(
          GOnCreateCommentData_onCreateComment_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GOnCreateCommentData_onCreateComment_habit_comments_items>
      get items;
  static Serializer<GOnCreateCommentData_onCreateComment_habit_comments>
      get serializer =>
          _$gOnCreateCommentDataOnCreateCommentHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData_onCreateComment_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData_onCreateComment_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData_onCreateComment_habit_comments.serializer,
        json,
      );
}

abstract class GOnCreateCommentData_onCreateComment_habit_comments_items
    implements
        Built<GOnCreateCommentData_onCreateComment_habit_comments_items,
            GOnCreateCommentData_onCreateComment_habit_comments_itemsBuilder>,
        GAllCommentFields_habit_comments_items {
  GOnCreateCommentData_onCreateComment_habit_comments_items._();

  factory GOnCreateCommentData_onCreateComment_habit_comments_items(
      [Function(
              GOnCreateCommentData_onCreateComment_habit_comments_itemsBuilder
                  b)
          updates]) = _$GOnCreateCommentData_onCreateComment_habit_comments_items;

  static void _initializeBuilder(
          GOnCreateCommentData_onCreateComment_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GOnCreateCommentData_onCreateComment_habit_comments_items>
      get serializer =>
          _$gOnCreateCommentDataOnCreateCommentHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateCommentData_onCreateComment_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateCommentData_onCreateComment_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateCommentData_onCreateComment_habit_comments_items.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData
    implements Built<GOnUpdateCommentData, GOnUpdateCommentDataBuilder> {
  GOnUpdateCommentData._();

  factory GOnUpdateCommentData(
          [Function(GOnUpdateCommentDataBuilder b) updates]) =
      _$GOnUpdateCommentData;

  static void _initializeBuilder(GOnUpdateCommentDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnUpdateCommentData_onUpdateComment? get onUpdateComment;
  static Serializer<GOnUpdateCommentData> get serializer =>
      _$gOnUpdateCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData_onUpdateComment
    implements
        Built<GOnUpdateCommentData_onUpdateComment,
            GOnUpdateCommentData_onUpdateCommentBuilder>,
        GAllCommentFields {
  GOnUpdateCommentData_onUpdateComment._();

  factory GOnUpdateCommentData_onUpdateComment(
          [Function(GOnUpdateCommentData_onUpdateCommentBuilder b) updates]) =
      _$GOnUpdateCommentData_onUpdateComment;

  static void _initializeBuilder(
          GOnUpdateCommentData_onUpdateCommentBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GOnUpdateCommentData_onUpdateComment_by? get by;
  @override
  String? get habitId;
  @override
  GOnUpdateCommentData_onUpdateComment_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GOnUpdateCommentData_onUpdateComment> get serializer =>
      _$gOnUpdateCommentDataOnUpdateCommentSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData_onUpdateComment.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData_onUpdateComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData_onUpdateComment.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData_onUpdateComment_by
    implements
        Built<GOnUpdateCommentData_onUpdateComment_by,
            GOnUpdateCommentData_onUpdateComment_byBuilder>,
        GAllCommentFields_by {
  GOnUpdateCommentData_onUpdateComment_by._();

  factory GOnUpdateCommentData_onUpdateComment_by(
      [Function(GOnUpdateCommentData_onUpdateComment_byBuilder b)
          updates]) = _$GOnUpdateCommentData_onUpdateComment_by;

  static void _initializeBuilder(
          GOnUpdateCommentData_onUpdateComment_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GOnUpdateCommentData_onUpdateComment_by_avatar? get avatar;
  static Serializer<GOnUpdateCommentData_onUpdateComment_by> get serializer =>
      _$gOnUpdateCommentDataOnUpdateCommentBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData_onUpdateComment_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData_onUpdateComment_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData_onUpdateComment_by.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData_onUpdateComment_by_avatar
    implements
        Built<GOnUpdateCommentData_onUpdateComment_by_avatar,
            GOnUpdateCommentData_onUpdateComment_by_avatarBuilder>,
        GAllCommentFields_by_avatar {
  GOnUpdateCommentData_onUpdateComment_by_avatar._();

  factory GOnUpdateCommentData_onUpdateComment_by_avatar(
      [Function(GOnUpdateCommentData_onUpdateComment_by_avatarBuilder b)
          updates]) = _$GOnUpdateCommentData_onUpdateComment_by_avatar;

  static void _initializeBuilder(
          GOnUpdateCommentData_onUpdateComment_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GOnUpdateCommentData_onUpdateComment_by_avatar>
      get serializer => _$gOnUpdateCommentDataOnUpdateCommentByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData_onUpdateComment_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData_onUpdateComment_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData_onUpdateComment_by_avatar.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData_onUpdateComment_habit
    implements
        Built<GOnUpdateCommentData_onUpdateComment_habit,
            GOnUpdateCommentData_onUpdateComment_habitBuilder>,
        GAllCommentFields_habit {
  GOnUpdateCommentData_onUpdateComment_habit._();

  factory GOnUpdateCommentData_onUpdateComment_habit(
      [Function(GOnUpdateCommentData_onUpdateComment_habitBuilder b)
          updates]) = _$GOnUpdateCommentData_onUpdateComment_habit;

  static void _initializeBuilder(
          GOnUpdateCommentData_onUpdateComment_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GOnUpdateCommentData_onUpdateComment_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GOnUpdateCommentData_onUpdateComment_habit>
      get serializer => _$gOnUpdateCommentDataOnUpdateCommentHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData_onUpdateComment_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData_onUpdateComment_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData_onUpdateComment_habit.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData_onUpdateComment_habit_comments
    implements
        Built<GOnUpdateCommentData_onUpdateComment_habit_comments,
            GOnUpdateCommentData_onUpdateComment_habit_commentsBuilder>,
        GAllCommentFields_habit_comments {
  GOnUpdateCommentData_onUpdateComment_habit_comments._();

  factory GOnUpdateCommentData_onUpdateComment_habit_comments(
      [Function(GOnUpdateCommentData_onUpdateComment_habit_commentsBuilder b)
          updates]) = _$GOnUpdateCommentData_onUpdateComment_habit_comments;

  static void _initializeBuilder(
          GOnUpdateCommentData_onUpdateComment_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GOnUpdateCommentData_onUpdateComment_habit_comments_items>
      get items;
  static Serializer<GOnUpdateCommentData_onUpdateComment_habit_comments>
      get serializer =>
          _$gOnUpdateCommentDataOnUpdateCommentHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData_onUpdateComment_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData_onUpdateComment_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData_onUpdateComment_habit_comments.serializer,
        json,
      );
}

abstract class GOnUpdateCommentData_onUpdateComment_habit_comments_items
    implements
        Built<GOnUpdateCommentData_onUpdateComment_habit_comments_items,
            GOnUpdateCommentData_onUpdateComment_habit_comments_itemsBuilder>,
        GAllCommentFields_habit_comments_items {
  GOnUpdateCommentData_onUpdateComment_habit_comments_items._();

  factory GOnUpdateCommentData_onUpdateComment_habit_comments_items(
      [Function(
              GOnUpdateCommentData_onUpdateComment_habit_comments_itemsBuilder
                  b)
          updates]) = _$GOnUpdateCommentData_onUpdateComment_habit_comments_items;

  static void _initializeBuilder(
          GOnUpdateCommentData_onUpdateComment_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GOnUpdateCommentData_onUpdateComment_habit_comments_items>
      get serializer =>
          _$gOnUpdateCommentDataOnUpdateCommentHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateCommentData_onUpdateComment_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateCommentData_onUpdateComment_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateCommentData_onUpdateComment_habit_comments_items.serializer,
        json,
      );
}

abstract class GOnCreateHabitData
    implements Built<GOnCreateHabitData, GOnCreateHabitDataBuilder> {
  GOnCreateHabitData._();

  factory GOnCreateHabitData([Function(GOnCreateHabitDataBuilder b) updates]) =
      _$GOnCreateHabitData;

  static void _initializeBuilder(GOnCreateHabitDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnCreateHabitData_onCreateHabit? get onCreateHabit;
  static Serializer<GOnCreateHabitData> get serializer =>
      _$gOnCreateHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit
    implements
        Built<GOnCreateHabitData_onCreateHabit,
            GOnCreateHabitData_onCreateHabitBuilder>,
        GAllHabitFields {
  GOnCreateHabitData_onCreateHabit._();

  factory GOnCreateHabitData_onCreateHabit(
          [Function(GOnCreateHabitData_onCreateHabitBuilder b) updates]) =
      _$GOnCreateHabitData_onCreateHabit;

  static void _initializeBuilder(GOnCreateHabitData_onCreateHabitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GOnCreateHabitData_onCreateHabit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GOnCreateHabitData_onCreateHabit> get serializer =>
      _$gOnCreateHabitDataOnCreateHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData_onCreateHabit.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit_comments
    implements
        Built<GOnCreateHabitData_onCreateHabit_comments,
            GOnCreateHabitData_onCreateHabit_commentsBuilder>,
        GAllHabitFields_comments {
  GOnCreateHabitData_onCreateHabit_comments._();

  factory GOnCreateHabitData_onCreateHabit_comments(
      [Function(GOnCreateHabitData_onCreateHabit_commentsBuilder b)
          updates]) = _$GOnCreateHabitData_onCreateHabit_comments;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GOnCreateHabitData_onCreateHabit_comments_items> get items;
  static Serializer<GOnCreateHabitData_onCreateHabit_comments> get serializer =>
      _$gOnCreateHabitDataOnCreateHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData_onCreateHabit_comments.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit_comments_items
    implements
        Built<GOnCreateHabitData_onCreateHabit_comments_items,
            GOnCreateHabitData_onCreateHabit_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GOnCreateHabitData_onCreateHabit_comments_items._();

  factory GOnCreateHabitData_onCreateHabit_comments_items(
      [Function(GOnCreateHabitData_onCreateHabit_comments_itemsBuilder b)
          updates]) = _$GOnCreateHabitData_onCreateHabit_comments_items;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GOnCreateHabitData_onCreateHabit_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GOnCreateHabitData_onCreateHabit_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GOnCreateHabitData_onCreateHabit_comments_items>
      get serializer =>
          _$gOnCreateHabitDataOnCreateHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit_comments_items_by
    implements
        Built<GOnCreateHabitData_onCreateHabit_comments_items_by,
            GOnCreateHabitData_onCreateHabit_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GOnCreateHabitData_onCreateHabit_comments_items_by._();

  factory GOnCreateHabitData_onCreateHabit_comments_items_by(
      [Function(GOnCreateHabitData_onCreateHabit_comments_items_byBuilder b)
          updates]) = _$GOnCreateHabitData_onCreateHabit_comments_items_by;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GOnCreateHabitData_onCreateHabit_comments_items_by_avatar? get avatar;
  static Serializer<GOnCreateHabitData_onCreateHabit_comments_items_by>
      get serializer =>
          _$gOnCreateHabitDataOnCreateHabitCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_by.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit_comments_items_by_avatar
    implements
        Built<GOnCreateHabitData_onCreateHabit_comments_items_by_avatar,
            GOnCreateHabitData_onCreateHabit_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GOnCreateHabitData_onCreateHabit_comments_items_by_avatar._();

  factory GOnCreateHabitData_onCreateHabit_comments_items_by_avatar(
      [Function(
              GOnCreateHabitData_onCreateHabit_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GOnCreateHabitData_onCreateHabit_comments_items_by_avatar;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GOnCreateHabitData_onCreateHabit_comments_items_by_avatar>
      get serializer =>
          _$gOnCreateHabitDataOnCreateHabitCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit_comments_items_habit
    implements
        Built<GOnCreateHabitData_onCreateHabit_comments_items_habit,
            GOnCreateHabitData_onCreateHabit_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GOnCreateHabitData_onCreateHabit_comments_items_habit._();

  factory GOnCreateHabitData_onCreateHabit_comments_items_habit(
      [Function(GOnCreateHabitData_onCreateHabit_comments_items_habitBuilder b)
          updates]) = _$GOnCreateHabitData_onCreateHabit_comments_items_habit;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GOnCreateHabitData_onCreateHabit_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GOnCreateHabitData_onCreateHabit_comments_items_habit>
      get serializer =>
          _$gOnCreateHabitDataOnCreateHabitCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_habit.serializer,
        json,
      );
}

abstract class GOnCreateHabitData_onCreateHabit_comments_items_habit_comments
    implements
        Built<GOnCreateHabitData_onCreateHabit_comments_items_habit_comments,
            GOnCreateHabitData_onCreateHabit_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GOnCreateHabitData_onCreateHabit_comments_items_habit_comments._();

  factory GOnCreateHabitData_onCreateHabit_comments_items_habit_comments(
          [Function(
                  GOnCreateHabitData_onCreateHabit_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GOnCreateHabitData_onCreateHabit_comments_items_habit_comments;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GOnCreateHabitData_onCreateHabit_comments_items_habit_comments>
      get serializer =>
          _$gOnCreateHabitDataOnCreateHabitCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOnCreateHabitData_onCreateHabit_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items
    implements
        Built<
            GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items,
            GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items._();

  factory GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items(
          [Function(
                  GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items>
      get serializer =>
          _$gOnCreateHabitDataOnCreateHabitCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOnCreateHabitData_onCreateHabit_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GOnUpdateHabitData
    implements Built<GOnUpdateHabitData, GOnUpdateHabitDataBuilder> {
  GOnUpdateHabitData._();

  factory GOnUpdateHabitData([Function(GOnUpdateHabitDataBuilder b) updates]) =
      _$GOnUpdateHabitData;

  static void _initializeBuilder(GOnUpdateHabitDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GOnUpdateHabitData_onUpdateHabit? get onUpdateHabit;
  static Serializer<GOnUpdateHabitData> get serializer =>
      _$gOnUpdateHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit
    implements
        Built<GOnUpdateHabitData_onUpdateHabit,
            GOnUpdateHabitData_onUpdateHabitBuilder>,
        GAllHabitFields {
  GOnUpdateHabitData_onUpdateHabit._();

  factory GOnUpdateHabitData_onUpdateHabit(
          [Function(GOnUpdateHabitData_onUpdateHabitBuilder b) updates]) =
      _$GOnUpdateHabitData_onUpdateHabit;

  static void _initializeBuilder(GOnUpdateHabitData_onUpdateHabitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GOnUpdateHabitData_onUpdateHabit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GOnUpdateHabitData_onUpdateHabit> get serializer =>
      _$gOnUpdateHabitDataOnUpdateHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData_onUpdateHabit.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments
    implements
        Built<GOnUpdateHabitData_onUpdateHabit_comments,
            GOnUpdateHabitData_onUpdateHabit_commentsBuilder>,
        GAllHabitFields_comments {
  GOnUpdateHabitData_onUpdateHabit_comments._();

  factory GOnUpdateHabitData_onUpdateHabit_comments(
      [Function(GOnUpdateHabitData_onUpdateHabit_commentsBuilder b)
          updates]) = _$GOnUpdateHabitData_onUpdateHabit_comments;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GOnUpdateHabitData_onUpdateHabit_comments_items> get items;
  static Serializer<GOnUpdateHabitData_onUpdateHabit_comments> get serializer =>
      _$gOnUpdateHabitDataOnUpdateHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments_items
    implements
        Built<GOnUpdateHabitData_onUpdateHabit_comments_items,
            GOnUpdateHabitData_onUpdateHabit_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GOnUpdateHabitData_onUpdateHabit_comments_items._();

  factory GOnUpdateHabitData_onUpdateHabit_comments_items(
      [Function(GOnUpdateHabitData_onUpdateHabit_comments_itemsBuilder b)
          updates]) = _$GOnUpdateHabitData_onUpdateHabit_comments_items;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GOnUpdateHabitData_onUpdateHabit_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GOnUpdateHabitData_onUpdateHabit_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GOnUpdateHabitData_onUpdateHabit_comments_items>
      get serializer =>
          _$gOnUpdateHabitDataOnUpdateHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments_items_by
    implements
        Built<GOnUpdateHabitData_onUpdateHabit_comments_items_by,
            GOnUpdateHabitData_onUpdateHabit_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GOnUpdateHabitData_onUpdateHabit_comments_items_by._();

  factory GOnUpdateHabitData_onUpdateHabit_comments_items_by(
      [Function(GOnUpdateHabitData_onUpdateHabit_comments_items_byBuilder b)
          updates]) = _$GOnUpdateHabitData_onUpdateHabit_comments_items_by;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar? get avatar;
  static Serializer<GOnUpdateHabitData_onUpdateHabit_comments_items_by>
      get serializer =>
          _$gOnUpdateHabitDataOnUpdateHabitCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_by.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar
    implements
        Built<GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar,
            GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar._();

  factory GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar(
      [Function(
              GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar>
      get serializer =>
          _$gOnUpdateHabitDataOnUpdateHabitCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments_items_habit
    implements
        Built<GOnUpdateHabitData_onUpdateHabit_comments_items_habit,
            GOnUpdateHabitData_onUpdateHabit_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GOnUpdateHabitData_onUpdateHabit_comments_items_habit._();

  factory GOnUpdateHabitData_onUpdateHabit_comments_items_habit(
      [Function(GOnUpdateHabitData_onUpdateHabit_comments_items_habitBuilder b)
          updates]) = _$GOnUpdateHabitData_onUpdateHabit_comments_items_habit;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GOnUpdateHabitData_onUpdateHabit_comments_items_habit>
      get serializer =>
          _$gOnUpdateHabitDataOnUpdateHabitCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_habit.serializer,
        json,
      );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments
    implements
        Built<GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments,
            GOnUpdateHabitData_onUpdateHabit_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments._();

  factory GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments(
          [Function(
                  GOnUpdateHabitData_onUpdateHabit_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments>
      get serializer =>
          _$gOnUpdateHabitDataOnUpdateHabitCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items
    implements
        Built<
            GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items,
            GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items._();

  factory GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items(
          [Function(
                  GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items>
      get serializer =>
          _$gOnUpdateHabitDataOnUpdateHabitCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GOnUpdateHabitData_onUpdateHabit_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GCreateUserData
    implements Built<GCreateUserData, GCreateUserDataBuilder> {
  GCreateUserData._();

  factory GCreateUserData([Function(GCreateUserDataBuilder b) updates]) =
      _$GCreateUserData;

  static void _initializeBuilder(GCreateUserDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateUserData_createUser? get createUser;
  static Serializer<GCreateUserData> get serializer =>
      _$gCreateUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData.serializer,
        json,
      );
}

abstract class GCreateUserData_createUser
    implements
        Built<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  GCreateUserData_createUser._();

  factory GCreateUserData_createUser(
          [Function(GCreateUserData_createUserBuilder b) updates]) =
      _$GCreateUserData_createUser;

  static void _initializeBuilder(GCreateUserData_createUserBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get username;
  static Serializer<GCreateUserData_createUser> get serializer =>
      _$gCreateUserDataCreateUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData_createUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserData_createUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData_createUser.serializer,
        json,
      );
}

abstract class GCreateCommentData
    implements Built<GCreateCommentData, GCreateCommentDataBuilder> {
  GCreateCommentData._();

  factory GCreateCommentData([Function(GCreateCommentDataBuilder b) updates]) =
      _$GCreateCommentData;

  static void _initializeBuilder(GCreateCommentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateCommentData_createComment? get createComment;
  static Serializer<GCreateCommentData> get serializer =>
      _$gCreateCommentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData.serializer,
        json,
      );
}

abstract class GCreateCommentData_createComment
    implements
        Built<GCreateCommentData_createComment,
            GCreateCommentData_createCommentBuilder>,
        GAllCommentFields {
  GCreateCommentData_createComment._();

  factory GCreateCommentData_createComment(
          [Function(GCreateCommentData_createCommentBuilder b) updates]) =
      _$GCreateCommentData_createComment;

  static void _initializeBuilder(GCreateCommentData_createCommentBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GCreateCommentData_createComment_by? get by;
  @override
  String? get habitId;
  @override
  GCreateCommentData_createComment_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GCreateCommentData_createComment> get serializer =>
      _$gCreateCommentDataCreateCommentSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_createComment.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData_createComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_createComment.serializer,
        json,
      );
}

abstract class GCreateCommentData_createComment_by
    implements
        Built<GCreateCommentData_createComment_by,
            GCreateCommentData_createComment_byBuilder>,
        GAllCommentFields_by {
  GCreateCommentData_createComment_by._();

  factory GCreateCommentData_createComment_by(
          [Function(GCreateCommentData_createComment_byBuilder b) updates]) =
      _$GCreateCommentData_createComment_by;

  static void _initializeBuilder(
          GCreateCommentData_createComment_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GCreateCommentData_createComment_by_avatar? get avatar;
  static Serializer<GCreateCommentData_createComment_by> get serializer =>
      _$gCreateCommentDataCreateCommentBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_createComment_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData_createComment_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_createComment_by.serializer,
        json,
      );
}

abstract class GCreateCommentData_createComment_by_avatar
    implements
        Built<GCreateCommentData_createComment_by_avatar,
            GCreateCommentData_createComment_by_avatarBuilder>,
        GAllCommentFields_by_avatar {
  GCreateCommentData_createComment_by_avatar._();

  factory GCreateCommentData_createComment_by_avatar(
      [Function(GCreateCommentData_createComment_by_avatarBuilder b)
          updates]) = _$GCreateCommentData_createComment_by_avatar;

  static void _initializeBuilder(
          GCreateCommentData_createComment_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GCreateCommentData_createComment_by_avatar>
      get serializer => _$gCreateCommentDataCreateCommentByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_createComment_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData_createComment_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_createComment_by_avatar.serializer,
        json,
      );
}

abstract class GCreateCommentData_createComment_habit
    implements
        Built<GCreateCommentData_createComment_habit,
            GCreateCommentData_createComment_habitBuilder>,
        GAllCommentFields_habit {
  GCreateCommentData_createComment_habit._();

  factory GCreateCommentData_createComment_habit(
          [Function(GCreateCommentData_createComment_habitBuilder b) updates]) =
      _$GCreateCommentData_createComment_habit;

  static void _initializeBuilder(
          GCreateCommentData_createComment_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GCreateCommentData_createComment_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GCreateCommentData_createComment_habit> get serializer =>
      _$gCreateCommentDataCreateCommentHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_createComment_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData_createComment_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_createComment_habit.serializer,
        json,
      );
}

abstract class GCreateCommentData_createComment_habit_comments
    implements
        Built<GCreateCommentData_createComment_habit_comments,
            GCreateCommentData_createComment_habit_commentsBuilder>,
        GAllCommentFields_habit_comments {
  GCreateCommentData_createComment_habit_comments._();

  factory GCreateCommentData_createComment_habit_comments(
      [Function(GCreateCommentData_createComment_habit_commentsBuilder b)
          updates]) = _$GCreateCommentData_createComment_habit_comments;

  static void _initializeBuilder(
          GCreateCommentData_createComment_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GCreateCommentData_createComment_habit_comments_items> get items;
  static Serializer<GCreateCommentData_createComment_habit_comments>
      get serializer =>
          _$gCreateCommentDataCreateCommentHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_createComment_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData_createComment_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_createComment_habit_comments.serializer,
        json,
      );
}

abstract class GCreateCommentData_createComment_habit_comments_items
    implements
        Built<GCreateCommentData_createComment_habit_comments_items,
            GCreateCommentData_createComment_habit_comments_itemsBuilder>,
        GAllCommentFields_habit_comments_items {
  GCreateCommentData_createComment_habit_comments_items._();

  factory GCreateCommentData_createComment_habit_comments_items(
      [Function(GCreateCommentData_createComment_habit_comments_itemsBuilder b)
          updates]) = _$GCreateCommentData_createComment_habit_comments_items;

  static void _initializeBuilder(
          GCreateCommentData_createComment_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GCreateCommentData_createComment_habit_comments_items>
      get serializer =>
          _$gCreateCommentDataCreateCommentHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_createComment_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentData_createComment_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_createComment_habit_comments_items.serializer,
        json,
      );
}

abstract class GCreateHabitData
    implements Built<GCreateHabitData, GCreateHabitDataBuilder> {
  GCreateHabitData._();

  factory GCreateHabitData([Function(GCreateHabitDataBuilder b) updates]) =
      _$GCreateHabitData;

  static void _initializeBuilder(GCreateHabitDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateHabitData_createHabit? get createHabit;
  static Serializer<GCreateHabitData> get serializer =>
      _$gCreateHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit
    implements
        Built<GCreateHabitData_createHabit,
            GCreateHabitData_createHabitBuilder>,
        GAllHabitFields {
  GCreateHabitData_createHabit._();

  factory GCreateHabitData_createHabit(
          [Function(GCreateHabitData_createHabitBuilder b) updates]) =
      _$GCreateHabitData_createHabit;

  static void _initializeBuilder(GCreateHabitData_createHabitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GCreateHabitData_createHabit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GCreateHabitData_createHabit> get serializer =>
      _$gCreateHabitDataCreateHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments
    implements
        Built<GCreateHabitData_createHabit_comments,
            GCreateHabitData_createHabit_commentsBuilder>,
        GAllHabitFields_comments {
  GCreateHabitData_createHabit_comments._();

  factory GCreateHabitData_createHabit_comments(
          [Function(GCreateHabitData_createHabit_commentsBuilder b) updates]) =
      _$GCreateHabitData_createHabit_comments;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GCreateHabitData_createHabit_comments_items> get items;
  static Serializer<GCreateHabitData_createHabit_comments> get serializer =>
      _$gCreateHabitDataCreateHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit_comments.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments_items
    implements
        Built<GCreateHabitData_createHabit_comments_items,
            GCreateHabitData_createHabit_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GCreateHabitData_createHabit_comments_items._();

  factory GCreateHabitData_createHabit_comments_items(
      [Function(GCreateHabitData_createHabit_comments_itemsBuilder b)
          updates]) = _$GCreateHabitData_createHabit_comments_items;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GCreateHabitData_createHabit_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GCreateHabitData_createHabit_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GCreateHabitData_createHabit_comments_items>
      get serializer => _$gCreateHabitDataCreateHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit_comments_items.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments_items_by
    implements
        Built<GCreateHabitData_createHabit_comments_items_by,
            GCreateHabitData_createHabit_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GCreateHabitData_createHabit_comments_items_by._();

  factory GCreateHabitData_createHabit_comments_items_by(
      [Function(GCreateHabitData_createHabit_comments_items_byBuilder b)
          updates]) = _$GCreateHabitData_createHabit_comments_items_by;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GCreateHabitData_createHabit_comments_items_by_avatar? get avatar;
  static Serializer<GCreateHabitData_createHabit_comments_items_by>
      get serializer => _$gCreateHabitDataCreateHabitCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit_comments_items_by.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments_items_by_avatar
    implements
        Built<GCreateHabitData_createHabit_comments_items_by_avatar,
            GCreateHabitData_createHabit_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GCreateHabitData_createHabit_comments_items_by_avatar._();

  factory GCreateHabitData_createHabit_comments_items_by_avatar(
      [Function(GCreateHabitData_createHabit_comments_items_by_avatarBuilder b)
          updates]) = _$GCreateHabitData_createHabit_comments_items_by_avatar;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GCreateHabitData_createHabit_comments_items_by_avatar>
      get serializer =>
          _$gCreateHabitDataCreateHabitCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments_items_habit
    implements
        Built<GCreateHabitData_createHabit_comments_items_habit,
            GCreateHabitData_createHabit_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GCreateHabitData_createHabit_comments_items_habit._();

  factory GCreateHabitData_createHabit_comments_items_habit(
      [Function(GCreateHabitData_createHabit_comments_items_habitBuilder b)
          updates]) = _$GCreateHabitData_createHabit_comments_items_habit;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GCreateHabitData_createHabit_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GCreateHabitData_createHabit_comments_items_habit>
      get serializer =>
          _$gCreateHabitDataCreateHabitCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit_comments_items_habit.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments_items_habit_comments
    implements
        Built<GCreateHabitData_createHabit_comments_items_habit_comments,
            GCreateHabitData_createHabit_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GCreateHabitData_createHabit_comments_items_habit_comments._();

  factory GCreateHabitData_createHabit_comments_items_habit_comments(
      [Function(
              GCreateHabitData_createHabit_comments_items_habit_commentsBuilder
                  b)
          updates]) = _$GCreateHabitData_createHabit_comments_items_habit_comments;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GCreateHabitData_createHabit_comments_items_habit_comments_items>
      get items;
  static Serializer<GCreateHabitData_createHabit_comments_items_habit_comments>
      get serializer =>
          _$gCreateHabitDataCreateHabitCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateHabitData_createHabit_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GCreateHabitData_createHabit_comments_items_habit_comments_items
    implements
        Built<GCreateHabitData_createHabit_comments_items_habit_comments_items,
            GCreateHabitData_createHabit_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GCreateHabitData_createHabit_comments_items_habit_comments_items._();

  factory GCreateHabitData_createHabit_comments_items_habit_comments_items(
          [Function(
                  GCreateHabitData_createHabit_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GCreateHabitData_createHabit_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GCreateHabitData_createHabit_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GCreateHabitData_createHabit_comments_items_habit_comments_items>
      get serializer =>
          _$gCreateHabitDataCreateHabitCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateHabitData_createHabit_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateHabitData_createHabit_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCreateHabitData_createHabit_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GUpdateUserData
    implements Built<GUpdateUserData, GUpdateUserDataBuilder> {
  GUpdateUserData._();

  factory GUpdateUserData([Function(GUpdateUserDataBuilder b) updates]) =
      _$GUpdateUserData;

  static void _initializeBuilder(GUpdateUserDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserData_updateUser? get updateUser;
  static Serializer<GUpdateUserData> get serializer =>
      _$gUpdateUserDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser
    implements
        Built<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder>,
        GAllPrivateUserFields {
  GUpdateUserData_updateUser._();

  factory GUpdateUserData_updateUser(
          [Function(GUpdateUserData_updateUserBuilder b) updates]) =
      _$GUpdateUserData_updateUser;

  static void _initializeBuilder(GUpdateUserData_updateUserBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GUpdateUserData_updateUser_avatar? get avatar;
  @override
  GUpdateUserData_updateUser_comments? get comments;
  @override
  GUpdateUserData_updateUser_habits? get habits;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GUpdateUserData_updateUser> get serializer =>
      _$gUpdateUserDataUpdateUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_avatar
    implements
        Built<GUpdateUserData_updateUser_avatar,
            GUpdateUserData_updateUser_avatarBuilder>,
        GAllPrivateUserFields_avatar {
  GUpdateUserData_updateUser_avatar._();

  factory GUpdateUserData_updateUser_avatar(
          [Function(GUpdateUserData_updateUser_avatarBuilder b) updates]) =
      _$GUpdateUserData_updateUser_avatar;

  static void _initializeBuilder(GUpdateUserData_updateUser_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GUpdateUserData_updateUser_avatar> get serializer =>
      _$gUpdateUserDataUpdateUserAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_avatar.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments
    implements
        Built<GUpdateUserData_updateUser_comments,
            GUpdateUserData_updateUser_commentsBuilder>,
        GAllPrivateUserFields_comments {
  GUpdateUserData_updateUser_comments._();

  factory GUpdateUserData_updateUser_comments(
          [Function(GUpdateUserData_updateUser_commentsBuilder b) updates]) =
      _$GUpdateUserData_updateUser_comments;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GUpdateUserData_updateUser_comments_items> get items;
  static Serializer<GUpdateUserData_updateUser_comments> get serializer =>
      _$gUpdateUserDataUpdateUserCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_comments.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments_items
    implements
        Built<GUpdateUserData_updateUser_comments_items,
            GUpdateUserData_updateUser_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items,
        GAllCommentFields {
  GUpdateUserData_updateUser_comments_items._();

  factory GUpdateUserData_updateUser_comments_items(
      [Function(GUpdateUserData_updateUser_comments_itemsBuilder b)
          updates]) = _$GUpdateUserData_updateUser_comments_items;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GUpdateUserData_updateUser_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GUpdateUserData_updateUser_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GUpdateUserData_updateUser_comments_items> get serializer =>
      _$gUpdateUserDataUpdateUserCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_comments_items.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments_items_by
    implements
        Built<GUpdateUserData_updateUser_comments_items_by,
            GUpdateUserData_updateUser_comments_items_byBuilder>,
        GAllPrivateUserFields_comments_items_by,
        GAllCommentFields_by {
  GUpdateUserData_updateUser_comments_items_by._();

  factory GUpdateUserData_updateUser_comments_items_by(
      [Function(GUpdateUserData_updateUser_comments_items_byBuilder b)
          updates]) = _$GUpdateUserData_updateUser_comments_items_by;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GUpdateUserData_updateUser_comments_items_by_avatar? get avatar;
  static Serializer<GUpdateUserData_updateUser_comments_items_by>
      get serializer => _$gUpdateUserDataUpdateUserCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_comments_items_by.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments_items_by_avatar
    implements
        Built<GUpdateUserData_updateUser_comments_items_by_avatar,
            GUpdateUserData_updateUser_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GUpdateUserData_updateUser_comments_items_by_avatar._();

  factory GUpdateUserData_updateUser_comments_items_by_avatar(
      [Function(GUpdateUserData_updateUser_comments_items_by_avatarBuilder b)
          updates]) = _$GUpdateUserData_updateUser_comments_items_by_avatar;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GUpdateUserData_updateUser_comments_items_by_avatar>
      get serializer =>
          _$gUpdateUserDataUpdateUserCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments_items_habit
    implements
        Built<GUpdateUserData_updateUser_comments_items_habit,
            GUpdateUserData_updateUser_comments_items_habitBuilder>,
        GAllPrivateUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GUpdateUserData_updateUser_comments_items_habit._();

  factory GUpdateUserData_updateUser_comments_items_habit(
      [Function(GUpdateUserData_updateUser_comments_items_habitBuilder b)
          updates]) = _$GUpdateUserData_updateUser_comments_items_habit;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GUpdateUserData_updateUser_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GUpdateUserData_updateUser_comments_items_habit>
      get serializer => _$gUpdateUserDataUpdateUserCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_comments_items_habit.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments_items_habit_comments
    implements
        Built<GUpdateUserData_updateUser_comments_items_habit_comments,
            GUpdateUserData_updateUser_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GUpdateUserData_updateUser_comments_items_habit_comments._();

  factory GUpdateUserData_updateUser_comments_items_habit_comments(
      [Function(
              GUpdateUserData_updateUser_comments_items_habit_commentsBuilder b)
          updates]) = _$GUpdateUserData_updateUser_comments_items_habit_comments;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GUpdateUserData_updateUser_comments_items_habit_comments_items>
      get items;
  static Serializer<GUpdateUserData_updateUser_comments_items_habit_comments>
      get serializer =>
          _$gUpdateUserDataUpdateUserCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_comments_items_habit_comments_items
    implements
        Built<GUpdateUserData_updateUser_comments_items_habit_comments_items,
            GUpdateUserData_updateUser_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GUpdateUserData_updateUser_comments_items_habit_comments_items._();

  factory GUpdateUserData_updateUser_comments_items_habit_comments_items(
          [Function(
                  GUpdateUserData_updateUser_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GUpdateUserData_updateUser_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GUpdateUserData_updateUser_comments_items_habit_comments_items>
      get serializer =>
          _$gUpdateUserDataUpdateUserCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateUserData_updateUser_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GUpdateUserData_updateUser_habits
    implements
        Built<GUpdateUserData_updateUser_habits,
            GUpdateUserData_updateUser_habitsBuilder>,
        GAllPrivateUserFields_habits {
  GUpdateUserData_updateUser_habits._();

  factory GUpdateUserData_updateUser_habits(
          [Function(GUpdateUserData_updateUser_habitsBuilder b) updates]) =
      _$GUpdateUserData_updateUser_habits;

  static void _initializeBuilder(GUpdateUserData_updateUser_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GUpdateUserData_updateUser_habits_items> get items;
  static Serializer<GUpdateUserData_updateUser_habits> get serializer =>
      _$gUpdateUserDataUpdateUserHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_habits.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_habits_items
    implements
        Built<GUpdateUserData_updateUser_habits_items,
            GUpdateUserData_updateUser_habits_itemsBuilder>,
        GAllPrivateUserFields_habits_items,
        GAllHabitFields {
  GUpdateUserData_updateUser_habits_items._();

  factory GUpdateUserData_updateUser_habits_items(
      [Function(GUpdateUserData_updateUser_habits_itemsBuilder b)
          updates]) = _$GUpdateUserData_updateUser_habits_items;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GUpdateUserData_updateUser_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GUpdateUserData_updateUser_habits_items> get serializer =>
      _$gUpdateUserDataUpdateUserHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_habits_items.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_habits_items_comments
    implements
        Built<GUpdateUserData_updateUser_habits_items_comments,
            GUpdateUserData_updateUser_habits_items_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GUpdateUserData_updateUser_habits_items_comments._();

  factory GUpdateUserData_updateUser_habits_items_comments(
      [Function(GUpdateUserData_updateUser_habits_items_commentsBuilder b)
          updates]) = _$GUpdateUserData_updateUser_habits_items_comments;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GUpdateUserData_updateUser_habits_items_comments_items> get items;
  static Serializer<GUpdateUserData_updateUser_habits_items_comments>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_habits_items_comments.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_habits_items_comments_items
    implements
        Built<GUpdateUserData_updateUser_habits_items_comments_items,
            GUpdateUserData_updateUser_habits_items_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GUpdateUserData_updateUser_habits_items_comments_items._();

  factory GUpdateUserData_updateUser_habits_items_comments_items(
      [Function(GUpdateUserData_updateUser_habits_items_comments_itemsBuilder b)
          updates]) = _$GUpdateUserData_updateUser_habits_items_comments_items;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GUpdateUserData_updateUser_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GUpdateUserData_updateUser_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GUpdateUserData_updateUser_habits_items_comments_items>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_habits_items_comments_items_by
    implements
        Built<GUpdateUserData_updateUser_habits_items_comments_items_by,
            GUpdateUserData_updateUser_habits_items_comments_items_byBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GUpdateUserData_updateUser_habits_items_comments_items_by._();

  factory GUpdateUserData_updateUser_habits_items_comments_items_by(
      [Function(
              GUpdateUserData_updateUser_habits_items_comments_items_byBuilder
                  b)
          updates]) = _$GUpdateUserData_updateUser_habits_items_comments_items_by;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GUpdateUserData_updateUser_habits_items_comments_items_by_avatar? get avatar;
  static Serializer<GUpdateUserData_updateUser_habits_items_comments_items_by>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_habits_items_comments_items_by_avatar
    implements
        Built<GUpdateUserData_updateUser_habits_items_comments_items_by_avatar,
            GUpdateUserData_updateUser_habits_items_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GUpdateUserData_updateUser_habits_items_comments_items_by_avatar._();

  factory GUpdateUserData_updateUser_habits_items_comments_items_by_avatar(
          [Function(
                  GUpdateUserData_updateUser_habits_items_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GUpdateUserData_updateUser_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GUpdateUserData_updateUser_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateUserData_updateUser_habits_items_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GUpdateUserData_updateUser_habits_items_comments_items_habit
    implements
        Built<GUpdateUserData_updateUser_habits_items_comments_items_habit,
            GUpdateUserData_updateUser_habits_items_comments_items_habitBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GUpdateUserData_updateUser_habits_items_comments_items_habit._();

  factory GUpdateUserData_updateUser_habits_items_comments_items_habit(
          [Function(
                  GUpdateUserData_updateUser_habits_items_comments_items_habitBuilder
                      b)
              updates]) =
      _$GUpdateUserData_updateUser_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_comments_items_habitBuilder
              b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GUpdateUserData_updateUser_habits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<
          GUpdateUserData_updateUser_habits_items_comments_items_habit>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_habits_items_comments_items_habit_comments
    implements
        Built<
            GUpdateUserData_updateUser_habits_items_comments_items_habit_comments,
            GUpdateUserData_updateUser_habits_items_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GUpdateUserData_updateUser_habits_items_comments_items_habit_comments._();

  factory GUpdateUserData_updateUser_habits_items_comments_items_habit_comments(
          [Function(
                  GUpdateUserData_updateUser_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GUpdateUserData_updateUser_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GUpdateUserData_updateUser_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateUserData_updateUser_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items,
            GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items._();

  factory GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items(
          [Function(
                  GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gUpdateUserDataUpdateUserHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GUpdateHabitData
    implements Built<GUpdateHabitData, GUpdateHabitDataBuilder> {
  GUpdateHabitData._();

  factory GUpdateHabitData([Function(GUpdateHabitDataBuilder b) updates]) =
      _$GUpdateHabitData;

  static void _initializeBuilder(GUpdateHabitDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateHabitData_updateHabit? get updateHabit;
  static Serializer<GUpdateHabitData> get serializer =>
      _$gUpdateHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit
    implements
        Built<GUpdateHabitData_updateHabit,
            GUpdateHabitData_updateHabitBuilder>,
        GAllHabitFields {
  GUpdateHabitData_updateHabit._();

  factory GUpdateHabitData_updateHabit(
          [Function(GUpdateHabitData_updateHabitBuilder b) updates]) =
      _$GUpdateHabitData_updateHabit;

  static void _initializeBuilder(GUpdateHabitData_updateHabitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GUpdateHabitData_updateHabit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GUpdateHabitData_updateHabit> get serializer =>
      _$gUpdateHabitDataUpdateHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments
    implements
        Built<GUpdateHabitData_updateHabit_comments,
            GUpdateHabitData_updateHabit_commentsBuilder>,
        GAllHabitFields_comments {
  GUpdateHabitData_updateHabit_comments._();

  factory GUpdateHabitData_updateHabit_comments(
          [Function(GUpdateHabitData_updateHabit_commentsBuilder b) updates]) =
      _$GUpdateHabitData_updateHabit_comments;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GUpdateHabitData_updateHabit_comments_items> get items;
  static Serializer<GUpdateHabitData_updateHabit_comments> get serializer =>
      _$gUpdateHabitDataUpdateHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit_comments.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments_items
    implements
        Built<GUpdateHabitData_updateHabit_comments_items,
            GUpdateHabitData_updateHabit_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GUpdateHabitData_updateHabit_comments_items._();

  factory GUpdateHabitData_updateHabit_comments_items(
      [Function(GUpdateHabitData_updateHabit_comments_itemsBuilder b)
          updates]) = _$GUpdateHabitData_updateHabit_comments_items;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GUpdateHabitData_updateHabit_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GUpdateHabitData_updateHabit_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GUpdateHabitData_updateHabit_comments_items>
      get serializer => _$gUpdateHabitDataUpdateHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit_comments_items.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments_items_by
    implements
        Built<GUpdateHabitData_updateHabit_comments_items_by,
            GUpdateHabitData_updateHabit_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GUpdateHabitData_updateHabit_comments_items_by._();

  factory GUpdateHabitData_updateHabit_comments_items_by(
      [Function(GUpdateHabitData_updateHabit_comments_items_byBuilder b)
          updates]) = _$GUpdateHabitData_updateHabit_comments_items_by;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GUpdateHabitData_updateHabit_comments_items_by_avatar? get avatar;
  static Serializer<GUpdateHabitData_updateHabit_comments_items_by>
      get serializer => _$gUpdateHabitDataUpdateHabitCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit_comments_items_by.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments_items_by_avatar
    implements
        Built<GUpdateHabitData_updateHabit_comments_items_by_avatar,
            GUpdateHabitData_updateHabit_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GUpdateHabitData_updateHabit_comments_items_by_avatar._();

  factory GUpdateHabitData_updateHabit_comments_items_by_avatar(
      [Function(GUpdateHabitData_updateHabit_comments_items_by_avatarBuilder b)
          updates]) = _$GUpdateHabitData_updateHabit_comments_items_by_avatar;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GUpdateHabitData_updateHabit_comments_items_by_avatar>
      get serializer =>
          _$gUpdateHabitDataUpdateHabitCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments_items_habit
    implements
        Built<GUpdateHabitData_updateHabit_comments_items_habit,
            GUpdateHabitData_updateHabit_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GUpdateHabitData_updateHabit_comments_items_habit._();

  factory GUpdateHabitData_updateHabit_comments_items_habit(
      [Function(GUpdateHabitData_updateHabit_comments_items_habitBuilder b)
          updates]) = _$GUpdateHabitData_updateHabit_comments_items_habit;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GUpdateHabitData_updateHabit_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GUpdateHabitData_updateHabit_comments_items_habit>
      get serializer =>
          _$gUpdateHabitDataUpdateHabitCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit_comments_items_habit.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments_items_habit_comments
    implements
        Built<GUpdateHabitData_updateHabit_comments_items_habit_comments,
            GUpdateHabitData_updateHabit_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GUpdateHabitData_updateHabit_comments_items_habit_comments._();

  factory GUpdateHabitData_updateHabit_comments_items_habit_comments(
      [Function(
              GUpdateHabitData_updateHabit_comments_items_habit_commentsBuilder
                  b)
          updates]) = _$GUpdateHabitData_updateHabit_comments_items_habit_comments;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GUpdateHabitData_updateHabit_comments_items_habit_comments_items>
      get items;
  static Serializer<GUpdateHabitData_updateHabit_comments_items_habit_comments>
      get serializer =>
          _$gUpdateHabitDataUpdateHabitCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateHabitData_updateHabit_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GUpdateHabitData_updateHabit_comments_items_habit_comments_items
    implements
        Built<GUpdateHabitData_updateHabit_comments_items_habit_comments_items,
            GUpdateHabitData_updateHabit_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GUpdateHabitData_updateHabit_comments_items_habit_comments_items._();

  factory GUpdateHabitData_updateHabit_comments_items_habit_comments_items(
          [Function(
                  GUpdateHabitData_updateHabit_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GUpdateHabitData_updateHabit_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GUpdateHabitData_updateHabit_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GUpdateHabitData_updateHabit_comments_items_habit_comments_items>
      get serializer =>
          _$gUpdateHabitDataUpdateHabitCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateHabitData_updateHabit_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateHabitData_updateHabit_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateHabitData_updateHabit_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GDeleteHabitData
    implements Built<GDeleteHabitData, GDeleteHabitDataBuilder> {
  GDeleteHabitData._();

  factory GDeleteHabitData([Function(GDeleteHabitDataBuilder b) updates]) =
      _$GDeleteHabitData;

  static void _initializeBuilder(GDeleteHabitDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteHabitData_deleteHabit? get deleteHabit;
  static Serializer<GDeleteHabitData> get serializer =>
      _$gDeleteHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteHabitData.serializer,
        json,
      );
}

abstract class GDeleteHabitData_deleteHabit
    implements
        Built<GDeleteHabitData_deleteHabit,
            GDeleteHabitData_deleteHabitBuilder> {
  GDeleteHabitData_deleteHabit._();

  factory GDeleteHabitData_deleteHabit(
          [Function(GDeleteHabitData_deleteHabitBuilder b) updates]) =
      _$GDeleteHabitData_deleteHabit;

  static void _initializeBuilder(GDeleteHabitData_deleteHabitBuilder b) =>
      b..G__typename = 'Habit';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GDeleteHabitData_deleteHabit> get serializer =>
      _$gDeleteHabitDataDeleteHabitSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteHabitData_deleteHabit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteHabitData_deleteHabit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteHabitData_deleteHabit.serializer,
        json,
      );
}

abstract class GVoteForHabitData
    implements Built<GVoteForHabitData, GVoteForHabitDataBuilder> {
  GVoteForHabitData._();

  factory GVoteForHabitData([Function(GVoteForHabitDataBuilder b) updates]) =
      _$GVoteForHabitData;

  static void _initializeBuilder(GVoteForHabitDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVoteForHabitData_vote? get vote;
  static Serializer<GVoteForHabitData> get serializer =>
      _$gVoteForHabitDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoteForHabitData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoteForHabitData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoteForHabitData.serializer,
        json,
      );
}

abstract class GVoteForHabitData_vote
    implements
        Built<GVoteForHabitData_vote, GVoteForHabitData_voteBuilder>,
        GAllVoteResultFields {
  GVoteForHabitData_vote._();

  factory GVoteForHabitData_vote(
          [Function(GVoteForHabitData_voteBuilder b) updates]) =
      _$GVoteForHabitData_vote;

  static void _initializeBuilder(GVoteForHabitData_voteBuilder b) =>
      b..G__typename = 'VoteResult';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GVoteForHabitData_vote_habit? get habit;
  @override
  GVoteForHabitData_vote_user? get user;
  static Serializer<GVoteForHabitData_vote> get serializer =>
      _$gVoteForHabitDataVoteSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoteForHabitData_vote.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoteForHabitData_vote? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoteForHabitData_vote.serializer,
        json,
      );
}

abstract class GVoteForHabitData_vote_habit
    implements
        Built<GVoteForHabitData_vote_habit,
            GVoteForHabitData_vote_habitBuilder>,
        GAllVoteResultFields_habit {
  GVoteForHabitData_vote_habit._();

  factory GVoteForHabitData_vote_habit(
          [Function(GVoteForHabitData_vote_habitBuilder b) updates]) =
      _$GVoteForHabitData_vote_habit;

  static void _initializeBuilder(GVoteForHabitData_vote_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get owner;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GVoteForHabitData_vote_habit> get serializer =>
      _$gVoteForHabitDataVoteHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoteForHabitData_vote_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoteForHabitData_vote_habit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoteForHabitData_vote_habit.serializer,
        json,
      );
}

abstract class GVoteForHabitData_vote_user
    implements
        Built<GVoteForHabitData_vote_user, GVoteForHabitData_vote_userBuilder>,
        GAllVoteResultFields_user {
  GVoteForHabitData_vote_user._();

  factory GVoteForHabitData_vote_user(
          [Function(GVoteForHabitData_vote_userBuilder b) updates]) =
      _$GVoteForHabitData_vote_user;

  static void _initializeBuilder(GVoteForHabitData_vote_userBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GVoteForHabitData_vote_user> get serializer =>
      _$gVoteForHabitDataVoteUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVoteForHabitData_vote_user.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoteForHabitData_vote_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVoteForHabitData_vote_user.serializer,
        json,
      );
}

abstract class GSubscribeToVotesData
    implements Built<GSubscribeToVotesData, GSubscribeToVotesDataBuilder> {
  GSubscribeToVotesData._();

  factory GSubscribeToVotesData(
          [Function(GSubscribeToVotesDataBuilder b) updates]) =
      _$GSubscribeToVotesData;

  static void _initializeBuilder(GSubscribeToVotesDataBuilder b) =>
      b..G__typename = 'Subscription';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSubscribeToVotesData_subscribeToVotes? get subscribeToVotes;
  static Serializer<GSubscribeToVotesData> get serializer =>
      _$gSubscribeToVotesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToVotesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToVotesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToVotesData.serializer,
        json,
      );
}

abstract class GSubscribeToVotesData_subscribeToVotes
    implements
        Built<GSubscribeToVotesData_subscribeToVotes,
            GSubscribeToVotesData_subscribeToVotesBuilder>,
        GAllVoteResultFields {
  GSubscribeToVotesData_subscribeToVotes._();

  factory GSubscribeToVotesData_subscribeToVotes(
          [Function(GSubscribeToVotesData_subscribeToVotesBuilder b) updates]) =
      _$GSubscribeToVotesData_subscribeToVotes;

  static void _initializeBuilder(
          GSubscribeToVotesData_subscribeToVotesBuilder b) =>
      b..G__typename = 'VoteResult';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GSubscribeToVotesData_subscribeToVotes_habit? get habit;
  @override
  GSubscribeToVotesData_subscribeToVotes_user? get user;
  static Serializer<GSubscribeToVotesData_subscribeToVotes> get serializer =>
      _$gSubscribeToVotesDataSubscribeToVotesSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToVotesData_subscribeToVotes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToVotesData_subscribeToVotes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToVotesData_subscribeToVotes.serializer,
        json,
      );
}

abstract class GSubscribeToVotesData_subscribeToVotes_habit
    implements
        Built<GSubscribeToVotesData_subscribeToVotes_habit,
            GSubscribeToVotesData_subscribeToVotes_habitBuilder>,
        GAllVoteResultFields_habit {
  GSubscribeToVotesData_subscribeToVotes_habit._();

  factory GSubscribeToVotesData_subscribeToVotes_habit(
      [Function(GSubscribeToVotesData_subscribeToVotes_habitBuilder b)
          updates]) = _$GSubscribeToVotesData_subscribeToVotes_habit;

  static void _initializeBuilder(
          GSubscribeToVotesData_subscribeToVotes_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get owner;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GSubscribeToVotesData_subscribeToVotes_habit>
      get serializer => _$gSubscribeToVotesDataSubscribeToVotesHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToVotesData_subscribeToVotes_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToVotesData_subscribeToVotes_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToVotesData_subscribeToVotes_habit.serializer,
        json,
      );
}

abstract class GSubscribeToVotesData_subscribeToVotes_user
    implements
        Built<GSubscribeToVotesData_subscribeToVotes_user,
            GSubscribeToVotesData_subscribeToVotes_userBuilder>,
        GAllVoteResultFields_user {
  GSubscribeToVotesData_subscribeToVotes_user._();

  factory GSubscribeToVotesData_subscribeToVotes_user(
      [Function(GSubscribeToVotesData_subscribeToVotes_userBuilder b)
          updates]) = _$GSubscribeToVotesData_subscribeToVotes_user;

  static void _initializeBuilder(
          GSubscribeToVotesData_subscribeToVotes_userBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GSubscribeToVotesData_subscribeToVotes_user>
      get serializer => _$gSubscribeToVotesDataSubscribeToVotesUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSubscribeToVotesData_subscribeToVotes_user.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSubscribeToVotesData_subscribeToVotes_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSubscribeToVotesData_subscribeToVotes_user.serializer,
        json,
      );
}

abstract class GSearchUsersData
    implements Built<GSearchUsersData, GSearchUsersDataBuilder> {
  GSearchUsersData._();

  factory GSearchUsersData([Function(GSearchUsersDataBuilder b) updates]) =
      _$GSearchUsersData;

  static void _initializeBuilder(GSearchUsersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchUsersData_listUsers? get listUsers;
  static Serializer<GSearchUsersData> get serializer =>
      _$gSearchUsersDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers
    implements
        Built<GSearchUsersData_listUsers, GSearchUsersData_listUsersBuilder> {
  GSearchUsersData_listUsers._();

  factory GSearchUsersData_listUsers(
          [Function(GSearchUsersData_listUsersBuilder b) updates]) =
      _$GSearchUsersData_listUsers;

  static void _initializeBuilder(GSearchUsersData_listUsersBuilder b) =>
      b..G__typename = 'ModelUserConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSearchUsersData_listUsers_items> get items;
  static Serializer<GSearchUsersData_listUsers> get serializer =>
      _$gSearchUsersDataListUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items
    implements
        Built<GSearchUsersData_listUsers_items,
            GSearchUsersData_listUsers_itemsBuilder>,
        GAllPublicUserFields {
  GSearchUsersData_listUsers_items._();

  factory GSearchUsersData_listUsers_items(
          [Function(GSearchUsersData_listUsers_itemsBuilder b) updates]) =
      _$GSearchUsersData_listUsers_items;

  static void _initializeBuilder(GSearchUsersData_listUsers_itemsBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSearchUsersData_listUsers_items_avatar? get avatar;
  @override
  GSearchUsersData_listUsers_items_comments? get comments;
  @override
  GSearchUsersData_listUsers_items_habits? get habits;
  static Serializer<GSearchUsersData_listUsers_items> get serializer =>
      _$gSearchUsersDataListUsersItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_avatar
    implements
        Built<GSearchUsersData_listUsers_items_avatar,
            GSearchUsersData_listUsers_items_avatarBuilder>,
        GAllPublicUserFields_avatar {
  GSearchUsersData_listUsers_items_avatar._();

  factory GSearchUsersData_listUsers_items_avatar(
      [Function(GSearchUsersData_listUsers_items_avatarBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_avatar;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GSearchUsersData_listUsers_items_avatar> get serializer =>
      _$gSearchUsersDataListUsersItemsAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_avatar.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_comments
    implements
        Built<GSearchUsersData_listUsers_items_comments,
            GSearchUsersData_listUsers_items_commentsBuilder>,
        GAllPublicUserFields_comments {
  GSearchUsersData_listUsers_items_comments._();

  factory GSearchUsersData_listUsers_items_comments(
      [Function(GSearchUsersData_listUsers_items_commentsBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_comments;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSearchUsersData_listUsers_items_comments_items> get items;
  static Serializer<GSearchUsersData_listUsers_items_comments> get serializer =>
      _$gSearchUsersDataListUsersItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_comments.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_comments_items
    implements
        Built<GSearchUsersData_listUsers_items_comments_items,
            GSearchUsersData_listUsers_items_comments_itemsBuilder>,
        GAllPublicUserFields_comments_items,
        GAllCommentFields {
  GSearchUsersData_listUsers_items_comments_items._();

  factory GSearchUsersData_listUsers_items_comments_items(
      [Function(GSearchUsersData_listUsers_items_comments_itemsBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_comments_items;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GSearchUsersData_listUsers_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GSearchUsersData_listUsers_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GSearchUsersData_listUsers_items_comments_items>
      get serializer => _$gSearchUsersDataListUsersItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_comments_items.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_comments_items_by
    implements
        Built<GSearchUsersData_listUsers_items_comments_items_by,
            GSearchUsersData_listUsers_items_comments_items_byBuilder>,
        GAllPublicUserFields_comments_items_by,
        GAllCommentFields_by {
  GSearchUsersData_listUsers_items_comments_items_by._();

  factory GSearchUsersData_listUsers_items_comments_items_by(
      [Function(GSearchUsersData_listUsers_items_comments_items_byBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_comments_items_by;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSearchUsersData_listUsers_items_comments_items_by_avatar? get avatar;
  static Serializer<GSearchUsersData_listUsers_items_comments_items_by>
      get serializer =>
          _$gSearchUsersDataListUsersItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_comments_items_by.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_comments_items_by_avatar
    implements
        Built<GSearchUsersData_listUsers_items_comments_items_by_avatar,
            GSearchUsersData_listUsers_items_comments_items_by_avatarBuilder>,
        GAllPublicUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GSearchUsersData_listUsers_items_comments_items_by_avatar._();

  factory GSearchUsersData_listUsers_items_comments_items_by_avatar(
      [Function(
              GSearchUsersData_listUsers_items_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GSearchUsersData_listUsers_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GSearchUsersData_listUsers_items_comments_items_by_avatar>
      get serializer =>
          _$gSearchUsersDataListUsersItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_comments_items_habit
    implements
        Built<GSearchUsersData_listUsers_items_comments_items_habit,
            GSearchUsersData_listUsers_items_comments_items_habitBuilder>,
        GAllPublicUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GSearchUsersData_listUsers_items_comments_items_habit._();

  factory GSearchUsersData_listUsers_items_comments_items_habit(
      [Function(GSearchUsersData_listUsers_items_comments_items_habitBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_comments_items_habit;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSearchUsersData_listUsers_items_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GSearchUsersData_listUsers_items_comments_items_habit>
      get serializer =>
          _$gSearchUsersDataListUsersItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_comments_items_habit_comments
    implements
        Built<GSearchUsersData_listUsers_items_comments_items_habit_comments,
            GSearchUsersData_listUsers_items_comments_items_habit_commentsBuilder>,
        GAllPublicUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GSearchUsersData_listUsers_items_comments_items_habit_comments._();

  factory GSearchUsersData_listUsers_items_comments_items_habit_comments(
          [Function(
                  GSearchUsersData_listUsers_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GSearchUsersData_listUsers_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GSearchUsersData_listUsers_items_comments_items_habit_comments>
      get serializer =>
          _$gSearchUsersDataListUsersItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GSearchUsersData_listUsers_items_comments_items_habit_comments_items
    implements
        Built<
            GSearchUsersData_listUsers_items_comments_items_habit_comments_items,
            GSearchUsersData_listUsers_items_comments_items_habit_comments_itemsBuilder>,
        GAllPublicUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GSearchUsersData_listUsers_items_comments_items_habit_comments_items._();

  factory GSearchUsersData_listUsers_items_comments_items_habit_comments_items(
          [Function(
                  GSearchUsersData_listUsers_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSearchUsersData_listUsers_items_comments_items_habit_comments_items>
      get serializer =>
          _$gSearchUsersDataListUsersItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GSearchUsersData_listUsers_items_habits
    implements
        Built<GSearchUsersData_listUsers_items_habits,
            GSearchUsersData_listUsers_items_habitsBuilder>,
        GAllPublicUserFields_habits {
  GSearchUsersData_listUsers_items_habits._();

  factory GSearchUsersData_listUsers_items_habits(
      [Function(GSearchUsersData_listUsers_items_habitsBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_habits;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSearchUsersData_listUsers_items_habits_items> get items;
  static Serializer<GSearchUsersData_listUsers_items_habits> get serializer =>
      _$gSearchUsersDataListUsersItemsHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_habits.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_habits_items
    implements
        Built<GSearchUsersData_listUsers_items_habits_items,
            GSearchUsersData_listUsers_items_habits_itemsBuilder>,
        GAllPublicUserFields_habits_items,
        GAllHabitFields {
  GSearchUsersData_listUsers_items_habits_items._();

  factory GSearchUsersData_listUsers_items_habits_items(
      [Function(GSearchUsersData_listUsers_items_habits_itemsBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_habits_items;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSearchUsersData_listUsers_items_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GSearchUsersData_listUsers_items_habits_items>
      get serializer => _$gSearchUsersDataListUsersItemsHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_habits_items.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments
    implements
        Built<GSearchUsersData_listUsers_items_habits_items_comments,
            GSearchUsersData_listUsers_items_habits_items_commentsBuilder>,
        GAllPublicUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GSearchUsersData_listUsers_items_habits_items_comments._();

  factory GSearchUsersData_listUsers_items_habits_items_comments(
      [Function(GSearchUsersData_listUsers_items_habits_items_commentsBuilder b)
          updates]) = _$GSearchUsersData_listUsers_items_habits_items_comments;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSearchUsersData_listUsers_items_habits_items_comments_items>
      get items;
  static Serializer<GSearchUsersData_listUsers_items_habits_items_comments>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments_items
    implements
        Built<GSearchUsersData_listUsers_items_habits_items_comments_items,
            GSearchUsersData_listUsers_items_habits_items_comments_itemsBuilder>,
        GAllPublicUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GSearchUsersData_listUsers_items_habits_items_comments_items._();

  factory GSearchUsersData_listUsers_items_habits_items_comments_items(
          [Function(
                  GSearchUsersData_listUsers_items_habits_items_comments_itemsBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_habits_items_comments_items;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GSearchUsersData_listUsers_items_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSearchUsersData_listUsers_items_habits_items_comments_items>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items.serializer,
        json,
      );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments_items_by
    implements
        Built<GSearchUsersData_listUsers_items_habits_items_comments_items_by,
            GSearchUsersData_listUsers_items_habits_items_comments_items_byBuilder>,
        GAllPublicUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GSearchUsersData_listUsers_items_habits_items_comments_items_by._();

  factory GSearchUsersData_listUsers_items_habits_items_comments_items_by(
          [Function(
                  GSearchUsersData_listUsers_items_habits_items_comments_items_byBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_habits_items_comments_items_by;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_comments_items_byBuilder
              b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar?
      get avatar;
  static Serializer<
          GSearchUsersData_listUsers_items_habits_items_comments_items_by>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items_by
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments_items_by?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_habits_items_comments_items_by
                .serializer,
            json,
          );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar
    implements
        Built<
            GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar,
            GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatarBuilder>,
        GAllPublicUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar._();

  factory GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar(
          [Function(
                  GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_habits_items_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments_items_habit
    implements
        Built<
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit,
            GSearchUsersData_listUsers_items_habits_items_comments_items_habitBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit._();

  factory GSearchUsersData_listUsers_items_habits_items_comments_items_habit(
          [Function(
                  GSearchUsersData_listUsers_items_habits_items_comments_items_habitBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_comments_items_habitBuilder
              b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<
          GSearchUsersData_listUsers_items_habits_items_comments_items_habit>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items_habit
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments_items_habit?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit
                .serializer,
            json,
          );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments
    implements
        Built<
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments,
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit_commentsBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments._();

  factory GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments(
          [Function(
                  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items,
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items._();

  factory GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items(
          [Function(
                  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gSearchUsersDataListUsersItemsHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GSearchHabitsData
    implements Built<GSearchHabitsData, GSearchHabitsDataBuilder> {
  GSearchHabitsData._();

  factory GSearchHabitsData([Function(GSearchHabitsDataBuilder b) updates]) =
      _$GSearchHabitsData;

  static void _initializeBuilder(GSearchHabitsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchHabitsData_listHabits? get listHabits;
  static Serializer<GSearchHabitsData> get serializer =>
      _$gSearchHabitsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits
    implements
        Built<GSearchHabitsData_listHabits,
            GSearchHabitsData_listHabitsBuilder> {
  GSearchHabitsData_listHabits._();

  factory GSearchHabitsData_listHabits(
          [Function(GSearchHabitsData_listHabitsBuilder b) updates]) =
      _$GSearchHabitsData_listHabits;

  static void _initializeBuilder(GSearchHabitsData_listHabitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSearchHabitsData_listHabits_items> get items;
  static Serializer<GSearchHabitsData_listHabits> get serializer =>
      _$gSearchHabitsDataListHabitsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items
    implements
        Built<GSearchHabitsData_listHabits_items,
            GSearchHabitsData_listHabits_itemsBuilder>,
        GAllHabitFields {
  GSearchHabitsData_listHabits_items._();

  factory GSearchHabitsData_listHabits_items(
          [Function(GSearchHabitsData_listHabits_itemsBuilder b) updates]) =
      _$GSearchHabitsData_listHabits_items;

  static void _initializeBuilder(GSearchHabitsData_listHabits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSearchHabitsData_listHabits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GSearchHabitsData_listHabits_items> get serializer =>
      _$gSearchHabitsDataListHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits_items.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items_comments
    implements
        Built<GSearchHabitsData_listHabits_items_comments,
            GSearchHabitsData_listHabits_items_commentsBuilder>,
        GAllHabitFields_comments {
  GSearchHabitsData_listHabits_items_comments._();

  factory GSearchHabitsData_listHabits_items_comments(
      [Function(GSearchHabitsData_listHabits_items_commentsBuilder b)
          updates]) = _$GSearchHabitsData_listHabits_items_comments;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GSearchHabitsData_listHabits_items_comments_items> get items;
  static Serializer<GSearchHabitsData_listHabits_items_comments>
      get serializer => _$gSearchHabitsDataListHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits_items_comments.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items_comments_items
    implements
        Built<GSearchHabitsData_listHabits_items_comments_items,
            GSearchHabitsData_listHabits_items_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GSearchHabitsData_listHabits_items_comments_items._();

  factory GSearchHabitsData_listHabits_items_comments_items(
      [Function(GSearchHabitsData_listHabits_items_comments_itemsBuilder b)
          updates]) = _$GSearchHabitsData_listHabits_items_comments_items;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GSearchHabitsData_listHabits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GSearchHabitsData_listHabits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GSearchHabitsData_listHabits_items_comments_items>
      get serializer =>
          _$gSearchHabitsDataListHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits_items_comments_items.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items_comments_items_by
    implements
        Built<GSearchHabitsData_listHabits_items_comments_items_by,
            GSearchHabitsData_listHabits_items_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GSearchHabitsData_listHabits_items_comments_items_by._();

  factory GSearchHabitsData_listHabits_items_comments_items_by(
      [Function(GSearchHabitsData_listHabits_items_comments_items_byBuilder b)
          updates]) = _$GSearchHabitsData_listHabits_items_comments_items_by;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GSearchHabitsData_listHabits_items_comments_items_by_avatar? get avatar;
  static Serializer<GSearchHabitsData_listHabits_items_comments_items_by>
      get serializer =>
          _$gSearchHabitsDataListHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items_comments_items_by_avatar
    implements
        Built<GSearchHabitsData_listHabits_items_comments_items_by_avatar,
            GSearchHabitsData_listHabits_items_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GSearchHabitsData_listHabits_items_comments_items_by_avatar._();

  factory GSearchHabitsData_listHabits_items_comments_items_by_avatar(
      [Function(
              GSearchHabitsData_listHabits_items_comments_items_by_avatarBuilder
                  b)
          updates]) = _$GSearchHabitsData_listHabits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GSearchHabitsData_listHabits_items_comments_items_by_avatar>
      get serializer =>
          _$gSearchHabitsDataListHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits_items_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items_comments_items_habit
    implements
        Built<GSearchHabitsData_listHabits_items_comments_items_habit,
            GSearchHabitsData_listHabits_items_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GSearchHabitsData_listHabits_items_comments_items_habit._();

  factory GSearchHabitsData_listHabits_items_comments_items_habit(
      [Function(
              GSearchHabitsData_listHabits_items_comments_items_habitBuilder b)
          updates]) = _$GSearchHabitsData_listHabits_items_comments_items_habit;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GSearchHabitsData_listHabits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GSearchHabitsData_listHabits_items_comments_items_habit>
      get serializer =>
          _$gSearchHabitsDataListHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchHabitsData_listHabits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GSearchHabitsData_listHabits_items_comments_items_habit_comments
    implements
        Built<GSearchHabitsData_listHabits_items_comments_items_habit_comments,
            GSearchHabitsData_listHabits_items_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GSearchHabitsData_listHabits_items_comments_items_habit_comments._();

  factory GSearchHabitsData_listHabits_items_comments_items_habit_comments(
          [Function(
                  GSearchHabitsData_listHabits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GSearchHabitsData_listHabits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GSearchHabitsData_listHabits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GSearchHabitsData_listHabits_items_comments_items_habit_comments>
      get serializer =>
          _$gSearchHabitsDataListHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchHabitsData_listHabits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GSearchHabitsData_listHabits_items_comments_items_habit_comments_items
    implements
        Built<
            GSearchHabitsData_listHabits_items_comments_items_habit_comments_items,
            GSearchHabitsData_listHabits_items_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GSearchHabitsData_listHabits_items_comments_items_habit_comments_items._();

  factory GSearchHabitsData_listHabits_items_comments_items_habit_comments_items(
          [Function(
                  GSearchHabitsData_listHabits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GSearchHabitsData_listHabits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GSearchHabitsData_listHabits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GSearchHabitsData_listHabits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gSearchHabitsDataListHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchHabitsData_listHabits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchHabitsData_listHabits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchHabitsData_listHabits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GAllHabitFields {
  String get G__typename;
  String get id;
  String get tagline;
  _i2.GCategory get category;
  String? get details;
  String? get owner;
  GAllHabitFields_comments? get comments;
  _i2.GAWSDateTime get createdAt;
  _i2.GAWSDateTime get updatedAt;
  int? get ups;
  int? get downs;
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments {
  String get G__typename;
  BuiltList<GAllHabitFields_comments_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments_items implements GAllCommentFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllHabitFields_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllHabitFields_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments_items_by
    implements GAllCommentFields_by {
  @override
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllHabitFields_comments_items_by_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments_items_by_avatar
    implements GAllCommentFields_by_avatar {
  @override
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments_items_habit
    implements GAllCommentFields_habit {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllHabitFields_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments_items_habit_comments
    implements GAllCommentFields_habit_comments {
  @override
  String get G__typename;
  @override
  BuiltList<GAllHabitFields_comments_items_habit_comments_items> get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFields_comments_items_habit_comments_items
    implements GAllCommentFields_habit_comments_items {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllHabitFieldsData
    implements
        Built<GAllHabitFieldsData, GAllHabitFieldsDataBuilder>,
        GAllHabitFields {
  GAllHabitFieldsData._();

  factory GAllHabitFieldsData(
      [Function(GAllHabitFieldsDataBuilder b) updates]) = _$GAllHabitFieldsData;

  static void _initializeBuilder(GAllHabitFieldsDataBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllHabitFieldsData_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllHabitFieldsData> get serializer =>
      _$gAllHabitFieldsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments
    implements
        Built<GAllHabitFieldsData_comments,
            GAllHabitFieldsData_commentsBuilder>,
        GAllHabitFields_comments {
  GAllHabitFieldsData_comments._();

  factory GAllHabitFieldsData_comments(
          [Function(GAllHabitFieldsData_commentsBuilder b) updates]) =
      _$GAllHabitFieldsData_comments;

  static void _initializeBuilder(GAllHabitFieldsData_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllHabitFieldsData_comments_items> get items;
  static Serializer<GAllHabitFieldsData_comments> get serializer =>
      _$gAllHabitFieldsDataCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments_items
    implements
        Built<GAllHabitFieldsData_comments_items,
            GAllHabitFieldsData_comments_itemsBuilder>,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GAllHabitFieldsData_comments_items._();

  factory GAllHabitFieldsData_comments_items(
          [Function(GAllHabitFieldsData_comments_itemsBuilder b) updates]) =
      _$GAllHabitFieldsData_comments_items;

  static void _initializeBuilder(GAllHabitFieldsData_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllHabitFieldsData_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllHabitFieldsData_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllHabitFieldsData_comments_items> get serializer =>
      _$gAllHabitFieldsDataCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments_items.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments_items_by
    implements
        Built<GAllHabitFieldsData_comments_items_by,
            GAllHabitFieldsData_comments_items_byBuilder>,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GAllHabitFieldsData_comments_items_by._();

  factory GAllHabitFieldsData_comments_items_by(
          [Function(GAllHabitFieldsData_comments_items_byBuilder b) updates]) =
      _$GAllHabitFieldsData_comments_items_by;

  static void _initializeBuilder(
          GAllHabitFieldsData_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllHabitFieldsData_comments_items_by_avatar? get avatar;
  static Serializer<GAllHabitFieldsData_comments_items_by> get serializer =>
      _$gAllHabitFieldsDataCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments_items_by.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments_items_by_avatar
    implements
        Built<GAllHabitFieldsData_comments_items_by_avatar,
            GAllHabitFieldsData_comments_items_by_avatarBuilder>,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GAllHabitFieldsData_comments_items_by_avatar._();

  factory GAllHabitFieldsData_comments_items_by_avatar(
      [Function(GAllHabitFieldsData_comments_items_by_avatarBuilder b)
          updates]) = _$GAllHabitFieldsData_comments_items_by_avatar;

  static void _initializeBuilder(
          GAllHabitFieldsData_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GAllHabitFieldsData_comments_items_by_avatar>
      get serializer => _$gAllHabitFieldsDataCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments_items_habit
    implements
        Built<GAllHabitFieldsData_comments_items_habit,
            GAllHabitFieldsData_comments_items_habitBuilder>,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GAllHabitFieldsData_comments_items_habit._();

  factory GAllHabitFieldsData_comments_items_habit(
      [Function(GAllHabitFieldsData_comments_items_habitBuilder b)
          updates]) = _$GAllHabitFieldsData_comments_items_habit;

  static void _initializeBuilder(
          GAllHabitFieldsData_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllHabitFieldsData_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllHabitFieldsData_comments_items_habit> get serializer =>
      _$gAllHabitFieldsDataCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments_items_habit.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments_items_habit_comments
    implements
        Built<GAllHabitFieldsData_comments_items_habit_comments,
            GAllHabitFieldsData_comments_items_habit_commentsBuilder>,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GAllHabitFieldsData_comments_items_habit_comments._();

  factory GAllHabitFieldsData_comments_items_habit_comments(
      [Function(GAllHabitFieldsData_comments_items_habit_commentsBuilder b)
          updates]) = _$GAllHabitFieldsData_comments_items_habit_comments;

  static void _initializeBuilder(
          GAllHabitFieldsData_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllHabitFieldsData_comments_items_habit_comments_items> get items;
  static Serializer<GAllHabitFieldsData_comments_items_habit_comments>
      get serializer =>
          _$gAllHabitFieldsDataCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GAllHabitFieldsData_comments_items_habit_comments_items
    implements
        Built<GAllHabitFieldsData_comments_items_habit_comments_items,
            GAllHabitFieldsData_comments_items_habit_comments_itemsBuilder>,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GAllHabitFieldsData_comments_items_habit_comments_items._();

  factory GAllHabitFieldsData_comments_items_habit_comments_items(
      [Function(
              GAllHabitFieldsData_comments_items_habit_comments_itemsBuilder b)
          updates]) = _$GAllHabitFieldsData_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GAllHabitFieldsData_comments_items_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllHabitFieldsData_comments_items_habit_comments_items>
      get serializer =>
          _$gAllHabitFieldsDataCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllHabitFieldsData_comments_items_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllHabitFieldsData_comments_items_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllHabitFieldsData_comments_items_habit_comments_items.serializer,
        json,
      );
}

abstract class GAllPublicUserFields {
  String get G__typename;
  String get username;
  String? get displayUsername;
  String? get name;
  GAllPublicUserFields_avatar? get avatar;
  GAllPublicUserFields_comments? get comments;
  GAllPublicUserFields_habits? get habits;
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_avatar {
  String get G__typename;
  String get bucket;
  String get region;
  String get key;
  _i2.GAccessLevel? get accessLevel;
  String? get cognitoId;
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments {
  String get G__typename;
  BuiltList<GAllPublicUserFields_comments_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments_items
    implements GAllCommentFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPublicUserFields_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPublicUserFields_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments_items_by
    implements GAllCommentFields_by {
  @override
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPublicUserFields_comments_items_by_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments_items_by_avatar
    implements GAllCommentFields_by_avatar {
  @override
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments_items_habit
    implements GAllCommentFields_habit {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPublicUserFields_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments_items_habit_comments
    implements GAllCommentFields_habit_comments {
  @override
  String get G__typename;
  @override
  BuiltList<GAllPublicUserFields_comments_items_habit_comments_items> get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_comments_items_habit_comments_items
    implements GAllCommentFields_habit_comments_items {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits {
  String get G__typename;
  BuiltList<GAllPublicUserFields_habits_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items implements GAllHabitFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPublicUserFields_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments
    implements GAllHabitFields_comments {
  @override
  String get G__typename;
  @override
  BuiltList<GAllPublicUserFields_habits_items_comments_items> get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments_items
    implements GAllHabitFields_comments_items, GAllCommentFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPublicUserFields_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPublicUserFields_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments_items_by
    implements GAllHabitFields_comments_items_by, GAllCommentFields_by {
  @override
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPublicUserFields_habits_items_comments_items_by_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments_items_by_avatar
    implements
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  @override
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments_items_habit
    implements GAllHabitFields_comments_items_habit, GAllCommentFields_habit {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPublicUserFields_habits_items_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments_items_habit_comments
    implements
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  @override
  String get G__typename;
  @override
  BuiltList<
          GAllPublicUserFields_habits_items_comments_items_habit_comments_items>
      get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFields_habits_items_comments_items_habit_comments_items
    implements
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPublicUserFieldsData
    implements
        Built<GAllPublicUserFieldsData, GAllPublicUserFieldsDataBuilder>,
        GAllPublicUserFields {
  GAllPublicUserFieldsData._();

  factory GAllPublicUserFieldsData(
          [Function(GAllPublicUserFieldsDataBuilder b) updates]) =
      _$GAllPublicUserFieldsData;

  static void _initializeBuilder(GAllPublicUserFieldsDataBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPublicUserFieldsData_avatar? get avatar;
  @override
  GAllPublicUserFieldsData_comments? get comments;
  @override
  GAllPublicUserFieldsData_habits? get habits;
  static Serializer<GAllPublicUserFieldsData> get serializer =>
      _$gAllPublicUserFieldsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_avatar
    implements
        Built<GAllPublicUserFieldsData_avatar,
            GAllPublicUserFieldsData_avatarBuilder>,
        GAllPublicUserFields_avatar {
  GAllPublicUserFieldsData_avatar._();

  factory GAllPublicUserFieldsData_avatar(
          [Function(GAllPublicUserFieldsData_avatarBuilder b) updates]) =
      _$GAllPublicUserFieldsData_avatar;

  static void _initializeBuilder(GAllPublicUserFieldsData_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GAllPublicUserFieldsData_avatar> get serializer =>
      _$gAllPublicUserFieldsDataAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_avatar.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments
    implements
        Built<GAllPublicUserFieldsData_comments,
            GAllPublicUserFieldsData_commentsBuilder>,
        GAllPublicUserFields_comments {
  GAllPublicUserFieldsData_comments._();

  factory GAllPublicUserFieldsData_comments(
          [Function(GAllPublicUserFieldsData_commentsBuilder b) updates]) =
      _$GAllPublicUserFieldsData_comments;

  static void _initializeBuilder(GAllPublicUserFieldsData_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPublicUserFieldsData_comments_items> get items;
  static Serializer<GAllPublicUserFieldsData_comments> get serializer =>
      _$gAllPublicUserFieldsDataCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments_items
    implements
        Built<GAllPublicUserFieldsData_comments_items,
            GAllPublicUserFieldsData_comments_itemsBuilder>,
        GAllPublicUserFields_comments_items,
        GAllCommentFields {
  GAllPublicUserFieldsData_comments_items._();

  factory GAllPublicUserFieldsData_comments_items(
      [Function(GAllPublicUserFieldsData_comments_itemsBuilder b)
          updates]) = _$GAllPublicUserFieldsData_comments_items;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPublicUserFieldsData_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPublicUserFieldsData_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllPublicUserFieldsData_comments_items> get serializer =>
      _$gAllPublicUserFieldsDataCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments_items.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments_items_by
    implements
        Built<GAllPublicUserFieldsData_comments_items_by,
            GAllPublicUserFieldsData_comments_items_byBuilder>,
        GAllPublicUserFields_comments_items_by,
        GAllCommentFields_by {
  GAllPublicUserFieldsData_comments_items_by._();

  factory GAllPublicUserFieldsData_comments_items_by(
      [Function(GAllPublicUserFieldsData_comments_items_byBuilder b)
          updates]) = _$GAllPublicUserFieldsData_comments_items_by;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPublicUserFieldsData_comments_items_by_avatar? get avatar;
  static Serializer<GAllPublicUserFieldsData_comments_items_by>
      get serializer => _$gAllPublicUserFieldsDataCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments_items_by.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments_items_by_avatar
    implements
        Built<GAllPublicUserFieldsData_comments_items_by_avatar,
            GAllPublicUserFieldsData_comments_items_by_avatarBuilder>,
        GAllPublicUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GAllPublicUserFieldsData_comments_items_by_avatar._();

  factory GAllPublicUserFieldsData_comments_items_by_avatar(
      [Function(GAllPublicUserFieldsData_comments_items_by_avatarBuilder b)
          updates]) = _$GAllPublicUserFieldsData_comments_items_by_avatar;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GAllPublicUserFieldsData_comments_items_by_avatar>
      get serializer =>
          _$gAllPublicUserFieldsDataCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments_items_habit
    implements
        Built<GAllPublicUserFieldsData_comments_items_habit,
            GAllPublicUserFieldsData_comments_items_habitBuilder>,
        GAllPublicUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GAllPublicUserFieldsData_comments_items_habit._();

  factory GAllPublicUserFieldsData_comments_items_habit(
      [Function(GAllPublicUserFieldsData_comments_items_habitBuilder b)
          updates]) = _$GAllPublicUserFieldsData_comments_items_habit;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPublicUserFieldsData_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllPublicUserFieldsData_comments_items_habit>
      get serializer => _$gAllPublicUserFieldsDataCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments_items_habit.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments_items_habit_comments
    implements
        Built<GAllPublicUserFieldsData_comments_items_habit_comments,
            GAllPublicUserFieldsData_comments_items_habit_commentsBuilder>,
        GAllPublicUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GAllPublicUserFieldsData_comments_items_habit_comments._();

  factory GAllPublicUserFieldsData_comments_items_habit_comments(
      [Function(GAllPublicUserFieldsData_comments_items_habit_commentsBuilder b)
          updates]) = _$GAllPublicUserFieldsData_comments_items_habit_comments;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPublicUserFieldsData_comments_items_habit_comments_items>
      get items;
  static Serializer<GAllPublicUserFieldsData_comments_items_habit_comments>
      get serializer =>
          _$gAllPublicUserFieldsDataCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_comments_items_habit_comments_items
    implements
        Built<GAllPublicUserFieldsData_comments_items_habit_comments_items,
            GAllPublicUserFieldsData_comments_items_habit_comments_itemsBuilder>,
        GAllPublicUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GAllPublicUserFieldsData_comments_items_habit_comments_items._();

  factory GAllPublicUserFieldsData_comments_items_habit_comments_items(
          [Function(
                  GAllPublicUserFieldsData_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GAllPublicUserFieldsData_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GAllPublicUserFieldsData_comments_items_habit_comments_items>
      get serializer =>
          _$gAllPublicUserFieldsDataCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_comments_items_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_comments_items_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_comments_items_habit_comments_items.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits
    implements
        Built<GAllPublicUserFieldsData_habits,
            GAllPublicUserFieldsData_habitsBuilder>,
        GAllPublicUserFields_habits {
  GAllPublicUserFieldsData_habits._();

  factory GAllPublicUserFieldsData_habits(
          [Function(GAllPublicUserFieldsData_habitsBuilder b) updates]) =
      _$GAllPublicUserFieldsData_habits;

  static void _initializeBuilder(GAllPublicUserFieldsData_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPublicUserFieldsData_habits_items> get items;
  static Serializer<GAllPublicUserFieldsData_habits> get serializer =>
      _$gAllPublicUserFieldsDataHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_habits.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits_items
    implements
        Built<GAllPublicUserFieldsData_habits_items,
            GAllPublicUserFieldsData_habits_itemsBuilder>,
        GAllPublicUserFields_habits_items,
        GAllHabitFields {
  GAllPublicUserFieldsData_habits_items._();

  factory GAllPublicUserFieldsData_habits_items(
          [Function(GAllPublicUserFieldsData_habits_itemsBuilder b) updates]) =
      _$GAllPublicUserFieldsData_habits_items;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPublicUserFieldsData_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllPublicUserFieldsData_habits_items> get serializer =>
      _$gAllPublicUserFieldsDataHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_habits_items.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits_items_comments
    implements
        Built<GAllPublicUserFieldsData_habits_items_comments,
            GAllPublicUserFieldsData_habits_items_commentsBuilder>,
        GAllPublicUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GAllPublicUserFieldsData_habits_items_comments._();

  factory GAllPublicUserFieldsData_habits_items_comments(
      [Function(GAllPublicUserFieldsData_habits_items_commentsBuilder b)
          updates]) = _$GAllPublicUserFieldsData_habits_items_comments;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPublicUserFieldsData_habits_items_comments_items> get items;
  static Serializer<GAllPublicUserFieldsData_habits_items_comments>
      get serializer => _$gAllPublicUserFieldsDataHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_habits_items_comments.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits_items_comments_items
    implements
        Built<GAllPublicUserFieldsData_habits_items_comments_items,
            GAllPublicUserFieldsData_habits_items_comments_itemsBuilder>,
        GAllPublicUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GAllPublicUserFieldsData_habits_items_comments_items._();

  factory GAllPublicUserFieldsData_habits_items_comments_items(
      [Function(GAllPublicUserFieldsData_habits_items_comments_itemsBuilder b)
          updates]) = _$GAllPublicUserFieldsData_habits_items_comments_items;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPublicUserFieldsData_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPublicUserFieldsData_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllPublicUserFieldsData_habits_items_comments_items>
      get serializer =>
          _$gAllPublicUserFieldsDataHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits_items_comments_items_by
    implements
        Built<GAllPublicUserFieldsData_habits_items_comments_items_by,
            GAllPublicUserFieldsData_habits_items_comments_items_byBuilder>,
        GAllPublicUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GAllPublicUserFieldsData_habits_items_comments_items_by._();

  factory GAllPublicUserFieldsData_habits_items_comments_items_by(
      [Function(
              GAllPublicUserFieldsData_habits_items_comments_items_byBuilder b)
          updates]) = _$GAllPublicUserFieldsData_habits_items_comments_items_by;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPublicUserFieldsData_habits_items_comments_items_by_avatar? get avatar;
  static Serializer<GAllPublicUserFieldsData_habits_items_comments_items_by>
      get serializer =>
          _$gAllPublicUserFieldsDataHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits_items_comments_items_by_avatar
    implements
        Built<GAllPublicUserFieldsData_habits_items_comments_items_by_avatar,
            GAllPublicUserFieldsData_habits_items_comments_items_by_avatarBuilder>,
        GAllPublicUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GAllPublicUserFieldsData_habits_items_comments_items_by_avatar._();

  factory GAllPublicUserFieldsData_habits_items_comments_items_by_avatar(
          [Function(
                  GAllPublicUserFieldsData_habits_items_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GAllPublicUserFieldsData_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GAllPublicUserFieldsData_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gAllPublicUserFieldsDataHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPublicUserFieldsData_habits_items_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GAllPublicUserFieldsData_habits_items_comments_items_habit
    implements
        Built<GAllPublicUserFieldsData_habits_items_comments_items_habit,
            GAllPublicUserFieldsData_habits_items_comments_items_habitBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GAllPublicUserFieldsData_habits_items_comments_items_habit._();

  factory GAllPublicUserFieldsData_habits_items_comments_items_habit(
      [Function(
              GAllPublicUserFieldsData_habits_items_comments_items_habitBuilder
                  b)
          updates]) = _$GAllPublicUserFieldsData_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_comments_items_habitBuilder
              b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPublicUserFieldsData_habits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllPublicUserFieldsData_habits_items_comments_items_habit>
      get serializer =>
          _$gAllPublicUserFieldsDataHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GAllPublicUserFieldsData_habits_items_comments_items_habit_comments
    implements
        Built<
            GAllPublicUserFieldsData_habits_items_comments_items_habit_comments,
            GAllPublicUserFieldsData_habits_items_comments_items_habit_commentsBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GAllPublicUserFieldsData_habits_items_comments_items_habit_comments._();

  factory GAllPublicUserFieldsData_habits_items_comments_items_habit_comments(
          [Function(
                  GAllPublicUserFieldsData_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GAllPublicUserFieldsData_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GAllPublicUserFieldsData_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gAllPublicUserFieldsDataHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPublicUserFieldsData_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items,
            GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPublicUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items._();

  factory GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items(
          [Function(
                  GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gAllPublicUserFieldsDataHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GAllPrivateUserFields {
  String get G__typename;
  String get username;
  String? get displayUsername;
  String? get name;
  GAllPrivateUserFields_avatar? get avatar;
  GAllPrivateUserFields_comments? get comments;
  GAllPrivateUserFields_habits? get habits;
  BuiltList<String>? get upvotedHabits;
  BuiltList<String>? get downvotedHabits;
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_avatar {
  String get G__typename;
  String get bucket;
  String get region;
  String get key;
  _i2.GAccessLevel? get accessLevel;
  String? get cognitoId;
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments {
  String get G__typename;
  BuiltList<GAllPrivateUserFields_comments_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments_items
    implements GAllCommentFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPrivateUserFields_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPrivateUserFields_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments_items_by
    implements GAllCommentFields_by {
  @override
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPrivateUserFields_comments_items_by_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments_items_by_avatar
    implements GAllCommentFields_by_avatar {
  @override
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments_items_habit
    implements GAllCommentFields_habit {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPrivateUserFields_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments_items_habit_comments
    implements GAllCommentFields_habit_comments {
  @override
  String get G__typename;
  @override
  BuiltList<GAllPrivateUserFields_comments_items_habit_comments_items>
      get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_comments_items_habit_comments_items
    implements GAllCommentFields_habit_comments_items {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits {
  String get G__typename;
  BuiltList<GAllPrivateUserFields_habits_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items implements GAllHabitFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPrivateUserFields_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments
    implements GAllHabitFields_comments {
  @override
  String get G__typename;
  @override
  BuiltList<GAllPrivateUserFields_habits_items_comments_items> get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments_items
    implements GAllHabitFields_comments_items, GAllCommentFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPrivateUserFields_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPrivateUserFields_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments_items_by
    implements GAllHabitFields_comments_items_by, GAllCommentFields_by {
  @override
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPrivateUserFields_habits_items_comments_items_by_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments_items_by_avatar
    implements
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  @override
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments_items_habit
    implements GAllHabitFields_comments_items_habit, GAllCommentFields_habit {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPrivateUserFields_habits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments_items_habit_comments
    implements
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  @override
  String get G__typename;
  @override
  BuiltList<
          GAllPrivateUserFields_habits_items_comments_items_habit_comments_items>
      get items;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFields_habits_items_comments_items_habit_comments_items
    implements
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAllPrivateUserFieldsData
    implements
        Built<GAllPrivateUserFieldsData, GAllPrivateUserFieldsDataBuilder>,
        GAllPrivateUserFields {
  GAllPrivateUserFieldsData._();

  factory GAllPrivateUserFieldsData(
          [Function(GAllPrivateUserFieldsDataBuilder b) updates]) =
      _$GAllPrivateUserFieldsData;

  static void _initializeBuilder(GAllPrivateUserFieldsDataBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPrivateUserFieldsData_avatar? get avatar;
  @override
  GAllPrivateUserFieldsData_comments? get comments;
  @override
  GAllPrivateUserFieldsData_habits? get habits;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GAllPrivateUserFieldsData> get serializer =>
      _$gAllPrivateUserFieldsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_avatar
    implements
        Built<GAllPrivateUserFieldsData_avatar,
            GAllPrivateUserFieldsData_avatarBuilder>,
        GAllPrivateUserFields_avatar {
  GAllPrivateUserFieldsData_avatar._();

  factory GAllPrivateUserFieldsData_avatar(
          [Function(GAllPrivateUserFieldsData_avatarBuilder b) updates]) =
      _$GAllPrivateUserFieldsData_avatar;

  static void _initializeBuilder(GAllPrivateUserFieldsData_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GAllPrivateUserFieldsData_avatar> get serializer =>
      _$gAllPrivateUserFieldsDataAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_avatar.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments
    implements
        Built<GAllPrivateUserFieldsData_comments,
            GAllPrivateUserFieldsData_commentsBuilder>,
        GAllPrivateUserFields_comments {
  GAllPrivateUserFieldsData_comments._();

  factory GAllPrivateUserFieldsData_comments(
          [Function(GAllPrivateUserFieldsData_commentsBuilder b) updates]) =
      _$GAllPrivateUserFieldsData_comments;

  static void _initializeBuilder(GAllPrivateUserFieldsData_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPrivateUserFieldsData_comments_items> get items;
  static Serializer<GAllPrivateUserFieldsData_comments> get serializer =>
      _$gAllPrivateUserFieldsDataCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_comments.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments_items
    implements
        Built<GAllPrivateUserFieldsData_comments_items,
            GAllPrivateUserFieldsData_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items,
        GAllCommentFields {
  GAllPrivateUserFieldsData_comments_items._();

  factory GAllPrivateUserFieldsData_comments_items(
      [Function(GAllPrivateUserFieldsData_comments_itemsBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_comments_items;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPrivateUserFieldsData_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPrivateUserFieldsData_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllPrivateUserFieldsData_comments_items> get serializer =>
      _$gAllPrivateUserFieldsDataCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_comments_items.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments_items_by
    implements
        Built<GAllPrivateUserFieldsData_comments_items_by,
            GAllPrivateUserFieldsData_comments_items_byBuilder>,
        GAllPrivateUserFields_comments_items_by,
        GAllCommentFields_by {
  GAllPrivateUserFieldsData_comments_items_by._();

  factory GAllPrivateUserFieldsData_comments_items_by(
      [Function(GAllPrivateUserFieldsData_comments_items_byBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_comments_items_by;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPrivateUserFieldsData_comments_items_by_avatar? get avatar;
  static Serializer<GAllPrivateUserFieldsData_comments_items_by>
      get serializer => _$gAllPrivateUserFieldsDataCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_comments_items_by.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments_items_by_avatar
    implements
        Built<GAllPrivateUserFieldsData_comments_items_by_avatar,
            GAllPrivateUserFieldsData_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GAllPrivateUserFieldsData_comments_items_by_avatar._();

  factory GAllPrivateUserFieldsData_comments_items_by_avatar(
      [Function(GAllPrivateUserFieldsData_comments_items_by_avatarBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_comments_items_by_avatar;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_comments_items_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GAllPrivateUserFieldsData_comments_items_by_avatar>
      get serializer =>
          _$gAllPrivateUserFieldsDataCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments_items_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments_items_by_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_comments_items_by_avatar.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments_items_habit
    implements
        Built<GAllPrivateUserFieldsData_comments_items_habit,
            GAllPrivateUserFieldsData_comments_items_habitBuilder>,
        GAllPrivateUserFields_comments_items_habit,
        GAllCommentFields_habit {
  GAllPrivateUserFieldsData_comments_items_habit._();

  factory GAllPrivateUserFieldsData_comments_items_habit(
      [Function(GAllPrivateUserFieldsData_comments_items_habitBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_comments_items_habit;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_comments_items_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPrivateUserFieldsData_comments_items_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllPrivateUserFieldsData_comments_items_habit>
      get serializer => _$gAllPrivateUserFieldsDataCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_comments_items_habit.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments_items_habit_comments
    implements
        Built<GAllPrivateUserFieldsData_comments_items_habit_comments,
            GAllPrivateUserFieldsData_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GAllPrivateUserFieldsData_comments_items_habit_comments._();

  factory GAllPrivateUserFieldsData_comments_items_habit_comments(
      [Function(
              GAllPrivateUserFieldsData_comments_items_habit_commentsBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_comments_items_habit_comments;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_comments_items_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPrivateUserFieldsData_comments_items_habit_comments_items>
      get items;
  static Serializer<GAllPrivateUserFieldsData_comments_items_habit_comments>
      get serializer =>
          _$gAllPrivateUserFieldsDataCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments_items_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments_items_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_comments_items_habit_comments.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_comments_items_habit_comments_items
    implements
        Built<GAllPrivateUserFieldsData_comments_items_habit_comments_items,
            GAllPrivateUserFieldsData_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GAllPrivateUserFieldsData_comments_items_habit_comments_items._();

  factory GAllPrivateUserFieldsData_comments_items_habit_comments_items(
          [Function(
                  GAllPrivateUserFieldsData_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GAllPrivateUserFieldsData_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GAllPrivateUserFieldsData_comments_items_habit_comments_items>
      get serializer =>
          _$gAllPrivateUserFieldsDataCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPrivateUserFieldsData_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GAllPrivateUserFieldsData_habits
    implements
        Built<GAllPrivateUserFieldsData_habits,
            GAllPrivateUserFieldsData_habitsBuilder>,
        GAllPrivateUserFields_habits {
  GAllPrivateUserFieldsData_habits._();

  factory GAllPrivateUserFieldsData_habits(
          [Function(GAllPrivateUserFieldsData_habitsBuilder b) updates]) =
      _$GAllPrivateUserFieldsData_habits;

  static void _initializeBuilder(GAllPrivateUserFieldsData_habitsBuilder b) =>
      b..G__typename = 'ModelHabitConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPrivateUserFieldsData_habits_items> get items;
  static Serializer<GAllPrivateUserFieldsData_habits> get serializer =>
      _$gAllPrivateUserFieldsDataHabitsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_habits.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_habits_items
    implements
        Built<GAllPrivateUserFieldsData_habits_items,
            GAllPrivateUserFieldsData_habits_itemsBuilder>,
        GAllPrivateUserFields_habits_items,
        GAllHabitFields {
  GAllPrivateUserFieldsData_habits_items._();

  factory GAllPrivateUserFieldsData_habits_items(
          [Function(GAllPrivateUserFieldsData_habits_itemsBuilder b) updates]) =
      _$GAllPrivateUserFieldsData_habits_items;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_itemsBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPrivateUserFieldsData_habits_items_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllPrivateUserFieldsData_habits_items> get serializer =>
      _$gAllPrivateUserFieldsDataHabitsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_habits_items.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments
    implements
        Built<GAllPrivateUserFieldsData_habits_items_comments,
            GAllPrivateUserFieldsData_habits_items_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments,
        GAllHabitFields_comments {
  GAllPrivateUserFieldsData_habits_items_comments._();

  factory GAllPrivateUserFieldsData_habits_items_comments(
      [Function(GAllPrivateUserFieldsData_habits_items_commentsBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_habits_items_comments;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllPrivateUserFieldsData_habits_items_comments_items> get items;
  static Serializer<GAllPrivateUserFieldsData_habits_items_comments>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_habits_items_comments.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments_items
    implements
        Built<GAllPrivateUserFieldsData_habits_items_comments_items,
            GAllPrivateUserFieldsData_habits_items_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items,
        GAllHabitFields_comments_items,
        GAllCommentFields {
  GAllPrivateUserFieldsData_habits_items_comments_items._();

  factory GAllPrivateUserFieldsData_habits_items_comments_items(
      [Function(GAllPrivateUserFieldsData_habits_items_comments_itemsBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_habits_items_comments_items;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllPrivateUserFieldsData_habits_items_comments_items_by? get by;
  @override
  String? get habitId;
  @override
  GAllPrivateUserFieldsData_habits_items_comments_items_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllPrivateUserFieldsData_habits_items_comments_items>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments_items_by
    implements
        Built<GAllPrivateUserFieldsData_habits_items_comments_items_by,
            GAllPrivateUserFieldsData_habits_items_comments_items_byBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by,
        GAllHabitFields_comments_items_by,
        GAllCommentFields_by {
  GAllPrivateUserFieldsData_habits_items_comments_items_by._();

  factory GAllPrivateUserFieldsData_habits_items_comments_items_by(
      [Function(
              GAllPrivateUserFieldsData_habits_items_comments_items_byBuilder b)
          updates]) = _$GAllPrivateUserFieldsData_habits_items_comments_items_by;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_comments_items_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar? get avatar;
  static Serializer<GAllPrivateUserFieldsData_habits_items_comments_items_by>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsItemsBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments_items_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_by.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar
    implements
        Built<GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar,
            GAllPrivateUserFieldsData_habits_items_comments_items_by_avatarBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_by_avatar,
        GAllHabitFields_comments_items_by_avatar,
        GAllCommentFields_by_avatar {
  GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar._();

  factory GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar(
          [Function(
                  GAllPrivateUserFieldsData_habits_items_comments_items_by_avatarBuilder
                      b)
              updates]) =
      _$GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_comments_items_by_avatarBuilder
              b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<
          GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsItemsByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPrivateUserFieldsData_habits_items_comments_items_by_avatar
                .serializer,
            json,
          );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments_items_habit
    implements
        Built<GAllPrivateUserFieldsData_habits_items_comments_items_habit,
            GAllPrivateUserFieldsData_habits_items_comments_items_habitBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit,
        GAllHabitFields_comments_items_habit,
        GAllCommentFields_habit {
  GAllPrivateUserFieldsData_habits_items_comments_items_habit._();

  factory GAllPrivateUserFieldsData_habits_items_comments_items_habit(
      [Function(
              GAllPrivateUserFieldsData_habits_items_comments_items_habitBuilder
                  b)
          updates]) = _$GAllPrivateUserFieldsData_habits_items_comments_items_habit;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_comments_items_habitBuilder
              b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments?
      get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllPrivateUserFieldsData_habits_items_comments_items_habit>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsItemsHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments_items_habit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_habit.serializer,
        json,
      );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments
    implements
        Built<
            GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments,
            GAllPrivateUserFieldsData_habits_items_comments_items_habit_commentsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments,
        GAllHabitFields_comments_items_habit_comments,
        GAllCommentFields_habit_comments {
  GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments._();

  factory GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments(
          [Function(
                  GAllPrivateUserFieldsData_habits_items_comments_items_habit_commentsBuilder
                      b)
              updates]) =
      _$GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_comments_items_habit_commentsBuilder
              b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items>
      get items;
  static Serializer<
          GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsItemsHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments
                .serializer,
            json,
          );
}

abstract class GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items
    implements
        Built<
            GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items,
            GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_itemsBuilder>,
        GAllPrivateUserFields_habits_items_comments_items_habit_comments_items,
        GAllHabitFields_comments_items_habit_comments_items,
        GAllCommentFields_habit_comments_items {
  GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items._();

  factory GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items(
          [Function(
                  GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_itemsBuilder
                      b)
              updates]) =
      _$GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items;

  static void _initializeBuilder(
          GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_itemsBuilder
              b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<
          GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items>
      get serializer =>
          _$gAllPrivateUserFieldsDataHabitsItemsCommentsItemsHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items
                .serializer,
            json,
          );
}

abstract class GAllCommentFields {
  String get G__typename;
  String get id;
  String? get owner;
  GAllCommentFields_by? get by;
  String? get habitId;
  GAllCommentFields_habit? get habit;
  String get comment;
  _i2.GAWSDateTime get createdAt;
  _i2.GAWSDateTime get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GAllCommentFields_by {
  String get G__typename;
  String get username;
  String? get displayUsername;
  String? get name;
  GAllCommentFields_by_avatar? get avatar;
  Map<String, dynamic> toJson();
}

abstract class GAllCommentFields_by_avatar {
  String get G__typename;
  String get bucket;
  String get region;
  String get key;
  _i2.GAccessLevel? get accessLevel;
  String? get cognitoId;
  Map<String, dynamic> toJson();
}

abstract class GAllCommentFields_habit {
  String get G__typename;
  String get id;
  String get tagline;
  _i2.GCategory get category;
  String? get details;
  String? get owner;
  GAllCommentFields_habit_comments? get comments;
  _i2.GAWSDateTime get createdAt;
  _i2.GAWSDateTime get updatedAt;
  int? get ups;
  int? get downs;
  Map<String, dynamic> toJson();
}

abstract class GAllCommentFields_habit_comments {
  String get G__typename;
  BuiltList<GAllCommentFields_habit_comments_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GAllCommentFields_habit_comments_items {
  String get G__typename;
  String get id;
  String? get owner;
  String? get habitId;
  String get comment;
  _i2.GAWSDateTime get createdAt;
  _i2.GAWSDateTime get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GAllCommentFieldsData
    implements
        Built<GAllCommentFieldsData, GAllCommentFieldsDataBuilder>,
        GAllCommentFields {
  GAllCommentFieldsData._();

  factory GAllCommentFieldsData(
          [Function(GAllCommentFieldsDataBuilder b) updates]) =
      _$GAllCommentFieldsData;

  static void _initializeBuilder(GAllCommentFieldsDataBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  GAllCommentFieldsData_by? get by;
  @override
  String? get habitId;
  @override
  GAllCommentFieldsData_habit? get habit;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllCommentFieldsData> get serializer =>
      _$gAllCommentFieldsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsData.serializer,
        json,
      );
}

abstract class GAllCommentFieldsData_by
    implements
        Built<GAllCommentFieldsData_by, GAllCommentFieldsData_byBuilder>,
        GAllCommentFields_by {
  GAllCommentFieldsData_by._();

  factory GAllCommentFieldsData_by(
          [Function(GAllCommentFieldsData_byBuilder b) updates]) =
      _$GAllCommentFieldsData_by;

  static void _initializeBuilder(GAllCommentFieldsData_byBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  String? get displayUsername;
  @override
  String? get name;
  @override
  GAllCommentFieldsData_by_avatar? get avatar;
  static Serializer<GAllCommentFieldsData_by> get serializer =>
      _$gAllCommentFieldsDataBySerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsData_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsData_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsData_by.serializer,
        json,
      );
}

abstract class GAllCommentFieldsData_by_avatar
    implements
        Built<GAllCommentFieldsData_by_avatar,
            GAllCommentFieldsData_by_avatarBuilder>,
        GAllCommentFields_by_avatar {
  GAllCommentFieldsData_by_avatar._();

  factory GAllCommentFieldsData_by_avatar(
          [Function(GAllCommentFieldsData_by_avatarBuilder b) updates]) =
      _$GAllCommentFieldsData_by_avatar;

  static void _initializeBuilder(GAllCommentFieldsData_by_avatarBuilder b) =>
      b..G__typename = 'S3Object';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get bucket;
  @override
  String get region;
  @override
  String get key;
  @override
  _i2.GAccessLevel? get accessLevel;
  @override
  String? get cognitoId;
  static Serializer<GAllCommentFieldsData_by_avatar> get serializer =>
      _$gAllCommentFieldsDataByAvatarSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsData_by_avatar.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsData_by_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsData_by_avatar.serializer,
        json,
      );
}

abstract class GAllCommentFieldsData_habit
    implements
        Built<GAllCommentFieldsData_habit, GAllCommentFieldsData_habitBuilder>,
        GAllCommentFields_habit {
  GAllCommentFieldsData_habit._();

  factory GAllCommentFieldsData_habit(
          [Function(GAllCommentFieldsData_habitBuilder b) updates]) =
      _$GAllCommentFieldsData_habit;

  static void _initializeBuilder(GAllCommentFieldsData_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get details;
  @override
  String? get owner;
  @override
  GAllCommentFieldsData_habit_comments? get comments;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  @override
  int? get ups;
  @override
  int? get downs;
  static Serializer<GAllCommentFieldsData_habit> get serializer =>
      _$gAllCommentFieldsDataHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsData_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsData_habit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsData_habit.serializer,
        json,
      );
}

abstract class GAllCommentFieldsData_habit_comments
    implements
        Built<GAllCommentFieldsData_habit_comments,
            GAllCommentFieldsData_habit_commentsBuilder>,
        GAllCommentFields_habit_comments {
  GAllCommentFieldsData_habit_comments._();

  factory GAllCommentFieldsData_habit_comments(
          [Function(GAllCommentFieldsData_habit_commentsBuilder b) updates]) =
      _$GAllCommentFieldsData_habit_comments;

  static void _initializeBuilder(
          GAllCommentFieldsData_habit_commentsBuilder b) =>
      b..G__typename = 'ModelCommentConnection';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GAllCommentFieldsData_habit_comments_items> get items;
  static Serializer<GAllCommentFieldsData_habit_comments> get serializer =>
      _$gAllCommentFieldsDataHabitCommentsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsData_habit_comments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsData_habit_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsData_habit_comments.serializer,
        json,
      );
}

abstract class GAllCommentFieldsData_habit_comments_items
    implements
        Built<GAllCommentFieldsData_habit_comments_items,
            GAllCommentFieldsData_habit_comments_itemsBuilder>,
        GAllCommentFields_habit_comments_items {
  GAllCommentFieldsData_habit_comments_items._();

  factory GAllCommentFieldsData_habit_comments_items(
      [Function(GAllCommentFieldsData_habit_comments_itemsBuilder b)
          updates]) = _$GAllCommentFieldsData_habit_comments_items;

  static void _initializeBuilder(
          GAllCommentFieldsData_habit_comments_itemsBuilder b) =>
      b..G__typename = 'Comment';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get owner;
  @override
  String? get habitId;
  @override
  String get comment;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllCommentFieldsData_habit_comments_items>
      get serializer => _$gAllCommentFieldsDataHabitCommentsItemsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCommentFieldsData_habit_comments_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllCommentFieldsData_habit_comments_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCommentFieldsData_habit_comments_items.serializer,
        json,
      );
}

abstract class GAllVoteResultFields {
  String get G__typename;
  GAllVoteResultFields_habit? get habit;
  GAllVoteResultFields_user? get user;
  Map<String, dynamic> toJson();
}

abstract class GAllVoteResultFields_habit {
  String get G__typename;
  String get id;
  String get tagline;
  _i2.GCategory get category;
  String? get owner;
  int? get ups;
  int? get downs;
  _i2.GAWSDateTime get createdAt;
  _i2.GAWSDateTime get updatedAt;
  Map<String, dynamic> toJson();
}

abstract class GAllVoteResultFields_user {
  String get G__typename;
  String get username;
  BuiltList<String>? get upvotedHabits;
  BuiltList<String>? get downvotedHabits;
  Map<String, dynamic> toJson();
}

abstract class GAllVoteResultFieldsData
    implements
        Built<GAllVoteResultFieldsData, GAllVoteResultFieldsDataBuilder>,
        GAllVoteResultFields {
  GAllVoteResultFieldsData._();

  factory GAllVoteResultFieldsData(
          [Function(GAllVoteResultFieldsDataBuilder b) updates]) =
      _$GAllVoteResultFieldsData;

  static void _initializeBuilder(GAllVoteResultFieldsDataBuilder b) =>
      b..G__typename = 'VoteResult';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GAllVoteResultFieldsData_habit? get habit;
  @override
  GAllVoteResultFieldsData_user? get user;
  static Serializer<GAllVoteResultFieldsData> get serializer =>
      _$gAllVoteResultFieldsDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllVoteResultFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllVoteResultFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllVoteResultFieldsData.serializer,
        json,
      );
}

abstract class GAllVoteResultFieldsData_habit
    implements
        Built<GAllVoteResultFieldsData_habit,
            GAllVoteResultFieldsData_habitBuilder>,
        GAllVoteResultFields_habit {
  GAllVoteResultFieldsData_habit._();

  factory GAllVoteResultFieldsData_habit(
          [Function(GAllVoteResultFieldsData_habitBuilder b) updates]) =
      _$GAllVoteResultFieldsData_habit;

  static void _initializeBuilder(GAllVoteResultFieldsData_habitBuilder b) =>
      b..G__typename = 'Habit';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get tagline;
  @override
  _i2.GCategory get category;
  @override
  String? get owner;
  @override
  int? get ups;
  @override
  int? get downs;
  @override
  _i2.GAWSDateTime get createdAt;
  @override
  _i2.GAWSDateTime get updatedAt;
  static Serializer<GAllVoteResultFieldsData_habit> get serializer =>
      _$gAllVoteResultFieldsDataHabitSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllVoteResultFieldsData_habit.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllVoteResultFieldsData_habit? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllVoteResultFieldsData_habit.serializer,
        json,
      );
}

abstract class GAllVoteResultFieldsData_user
    implements
        Built<GAllVoteResultFieldsData_user,
            GAllVoteResultFieldsData_userBuilder>,
        GAllVoteResultFields_user {
  GAllVoteResultFieldsData_user._();

  factory GAllVoteResultFieldsData_user(
          [Function(GAllVoteResultFieldsData_userBuilder b) updates]) =
      _$GAllVoteResultFieldsData_user;

  static void _initializeBuilder(GAllVoteResultFieldsData_userBuilder b) =>
      b..G__typename = 'User';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get username;
  @override
  BuiltList<String>? get upvotedHabits;
  @override
  BuiltList<String>? get downvotedHabits;
  static Serializer<GAllVoteResultFieldsData_user> get serializer =>
      _$gAllVoteResultFieldsDataUserSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllVoteResultFieldsData_user.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAllVoteResultFieldsData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllVoteResultFieldsData_user.serializer,
        json,
      );
}
