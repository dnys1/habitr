import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:habitr_models/src/graphql/__generated__/operations.data.gql.dart'
    show
        GAllCommentFieldsData,
        GAllCommentFieldsData_by,
        GAllCommentFieldsData_habit,
        GAllCommentFieldsData_habit_comments,
        GAllCommentFieldsData_habit_comments_items,
        GAllHabitFieldsData,
        GAllHabitFieldsData_comments,
        GAllHabitFieldsData_comments_items,
        GAllHabitFieldsData_comments_items_by,
        GAllHabitFieldsData_comments_items_habit,
        GAllHabitFieldsData_comments_items_habit_comments,
        GAllHabitFieldsData_comments_items_habit_comments_items,
        GAllPrivateUserFieldsData,
        GAllPrivateUserFieldsData_avatar,
        GAllPrivateUserFieldsData_comments,
        GAllPrivateUserFieldsData_comments_items,
        GAllPrivateUserFieldsData_comments_items_by,
        GAllPrivateUserFieldsData_comments_items_habit,
        GAllPrivateUserFieldsData_comments_items_habit_comments,
        GAllPrivateUserFieldsData_comments_items_habit_comments_items,
        GAllPrivateUserFieldsData_habits,
        GAllPrivateUserFieldsData_habits_items,
        GAllPrivateUserFieldsData_habits_items_comments,
        GAllPrivateUserFieldsData_habits_items_comments_items,
        GAllPrivateUserFieldsData_habits_items_comments_items_by,
        GAllPrivateUserFieldsData_habits_items_comments_items_habit,
        GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments,
        GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items,
        GAllPublicUserFieldsData,
        GAllPublicUserFieldsData_avatar,
        GAllPublicUserFieldsData_comments,
        GAllPublicUserFieldsData_comments_items,
        GAllPublicUserFieldsData_comments_items_by,
        GAllPublicUserFieldsData_comments_items_habit,
        GAllPublicUserFieldsData_comments_items_habit_comments,
        GAllPublicUserFieldsData_comments_items_habit_comments_items,
        GAllPublicUserFieldsData_habits,
        GAllPublicUserFieldsData_habits_items,
        GAllPublicUserFieldsData_habits_items_comments,
        GAllPublicUserFieldsData_habits_items_comments_items,
        GAllPublicUserFieldsData_habits_items_comments_items_by,
        GAllPublicUserFieldsData_habits_items_comments_items_habit,
        GAllPublicUserFieldsData_habits_items_comments_items_habit_comments,
        GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items,
        GAllVoteResultFieldsData,
        GAllVoteResultFieldsData_habit,
        GAllVoteResultFieldsData_user,
        GCreateCommentData,
        GCreateCommentData_createComment,
        GCreateCommentData_createComment_by,
        GCreateCommentData_createComment_habit,
        GCreateCommentData_createComment_habit_comments,
        GCreateCommentData_createComment_habit_comments_items,
        GCreateHabitData,
        GCreateHabitData_createHabit,
        GCreateHabitData_createHabit_comments,
        GCreateHabitData_createHabit_comments_items,
        GCreateHabitData_createHabit_comments_items_by,
        GCreateHabitData_createHabit_comments_items_habit,
        GCreateHabitData_createHabit_comments_items_habit_comments,
        GCreateHabitData_createHabit_comments_items_habit_comments_items,
        GCreateUserData,
        GCreateUserData_createUser,
        GDeleteHabitData,
        GDeleteHabitData_deleteHabit,
        GGetCommentData,
        GGetCommentData_getComment,
        GGetCommentData_getComment_by,
        GGetCommentData_getComment_habit,
        GGetCommentData_getComment_habit_comments,
        GGetCommentData_getComment_habit_comments_items,
        GGetHabitData,
        GGetHabitData_getHabit,
        GGetHabitData_getHabit_comments,
        GGetHabitData_getHabit_comments_items,
        GGetHabitData_getHabit_comments_items_by,
        GGetHabitData_getHabit_comments_items_habit,
        GGetHabitData_getHabit_comments_items_habit_comments,
        GGetHabitData_getHabit_comments_items_habit_comments_items,
        GGetSelfData,
        GGetSelfData_getUser,
        GGetSelfData_getUser_avatar,
        GGetSelfData_getUser_comments,
        GGetSelfData_getUser_comments_items,
        GGetSelfData_getUser_comments_items_by,
        GGetSelfData_getUser_comments_items_habit,
        GGetSelfData_getUser_comments_items_habit_comments,
        GGetSelfData_getUser_comments_items_habit_comments_items,
        GGetSelfData_getUser_habits,
        GGetSelfData_getUser_habits_items,
        GGetSelfData_getUser_habits_items_comments,
        GGetSelfData_getUser_habits_items_comments_items,
        GGetSelfData_getUser_habits_items_comments_items_by,
        GGetSelfData_getUser_habits_items_comments_items_habit,
        GGetSelfData_getUser_habits_items_comments_items_habit_comments,
        GGetSelfData_getUser_habits_items_comments_items_habit_comments_items,
        GGetUserData,
        GGetUserData_getUser,
        GGetUserData_getUser_avatar,
        GGetUserData_getUser_comments,
        GGetUserData_getUser_comments_items,
        GGetUserData_getUser_comments_items_by,
        GGetUserData_getUser_comments_items_habit,
        GGetUserData_getUser_comments_items_habit_comments,
        GGetUserData_getUser_comments_items_habit_comments_items,
        GGetUserData_getUser_habits,
        GGetUserData_getUser_habits_items,
        GGetUserData_getUser_habits_items_comments,
        GGetUserData_getUser_habits_items_comments_items,
        GGetUserData_getUser_habits_items_comments_items_by,
        GGetUserData_getUser_habits_items_comments_items_habit,
        GGetUserData_getUser_habits_items_comments_items_habit_comments,
        GGetUserData_getUser_habits_items_comments_items_habit_comments_items,
        GListHabitsByCategoryData,
        GListHabitsByCategoryData_habitsByCategory,
        GListHabitsByCategoryData_habitsByCategory_items,
        GListHabitsByCategoryData_habitsByCategory_items_comments,
        GListHabitsByCategoryData_habitsByCategory_items_comments_items,
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_by,
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit,
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments,
        GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items,
        GListHabitsData,
        GListHabitsData_listHabits,
        GListHabitsData_listHabits_items,
        GListHabitsData_listHabits_items_comments,
        GListHabitsData_listHabits_items_comments_items,
        GListHabitsData_listHabits_items_comments_items_by,
        GListHabitsData_listHabits_items_comments_items_habit,
        GListHabitsData_listHabits_items_comments_items_habit_comments,
        GListHabitsData_listHabits_items_comments_items_habit_comments_items,
        GSearchHabitsData,
        GSearchHabitsData_listHabits,
        GSearchHabitsData_listHabits_items,
        GSearchHabitsData_listHabits_items_comments,
        GSearchHabitsData_listHabits_items_comments_items,
        GSearchHabitsData_listHabits_items_comments_items_by,
        GSearchHabitsData_listHabits_items_comments_items_habit,
        GSearchHabitsData_listHabits_items_comments_items_habit_comments,
        GSearchHabitsData_listHabits_items_comments_items_habit_comments_items,
        GSearchUsersData,
        GSearchUsersData_listUsers,
        GSearchUsersData_listUsers_items,
        GSearchUsersData_listUsers_items_avatar,
        GSearchUsersData_listUsers_items_comments,
        GSearchUsersData_listUsers_items_comments_items,
        GSearchUsersData_listUsers_items_comments_items_by,
        GSearchUsersData_listUsers_items_comments_items_habit,
        GSearchUsersData_listUsers_items_comments_items_habit_comments,
        GSearchUsersData_listUsers_items_comments_items_habit_comments_items,
        GSearchUsersData_listUsers_items_habits,
        GSearchUsersData_listUsers_items_habits_items,
        GSearchUsersData_listUsers_items_habits_items_comments,
        GSearchUsersData_listUsers_items_habits_items_comments_items,
        GSearchUsersData_listUsers_items_habits_items_comments_items_by,
        GSearchUsersData_listUsers_items_habits_items_comments_items_habit,
        GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments,
        GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items,
        GSubscribeToUserData,
        GSubscribeToUserData_subscribeToUser,
        GSubscribeToUserData_subscribeToUser_avatar,
        GSubscribeToUserData_subscribeToUser_comments,
        GSubscribeToUserData_subscribeToUser_comments_items,
        GSubscribeToUserData_subscribeToUser_comments_items_by,
        GSubscribeToUserData_subscribeToUser_comments_items_habit,
        GSubscribeToUserData_subscribeToUser_comments_items_habit_comments,
        GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items,
        GSubscribeToUserData_subscribeToUser_habits,
        GSubscribeToUserData_subscribeToUser_habits_items,
        GSubscribeToUserData_subscribeToUser_habits_items_comments,
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items,
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by,
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit,
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments,
        GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items,
        GSubscribeToVotesData,
        GSubscribeToVotesData_subscribeToVotes,
        GSubscribeToVotesData_subscribeToVotes_habit,
        GSubscribeToVotesData_subscribeToVotes_user,
        GUpdateHabitData,
        GUpdateHabitData_updateHabit,
        GUpdateHabitData_updateHabit_comments,
        GUpdateHabitData_updateHabit_comments_items,
        GUpdateHabitData_updateHabit_comments_items_by,
        GUpdateHabitData_updateHabit_comments_items_habit,
        GUpdateHabitData_updateHabit_comments_items_habit_comments,
        GUpdateHabitData_updateHabit_comments_items_habit_comments_items,
        GUpdateUserData,
        GUpdateUserData_updateUser,
        GUpdateUserData_updateUser_avatar,
        GUpdateUserData_updateUser_comments,
        GUpdateUserData_updateUser_comments_items,
        GUpdateUserData_updateUser_comments_items_by,
        GUpdateUserData_updateUser_comments_items_habit,
        GUpdateUserData_updateUser_comments_items_habit_comments,
        GUpdateUserData_updateUser_comments_items_habit_comments_items,
        GUpdateUserData_updateUser_habits,
        GUpdateUserData_updateUser_habits_items,
        GUpdateUserData_updateUser_habits_items_comments,
        GUpdateUserData_updateUser_habits_items_comments_items,
        GUpdateUserData_updateUser_habits_items_comments_items_by,
        GUpdateUserData_updateUser_habits_items_comments_items_habit,
        GUpdateUserData_updateUser_habits_items_comments_items_habit_comments,
        GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items,
        GVoteForHabitData,
        GVoteForHabitData_vote,
        GVoteForHabitData_vote_habit,
        GVoteForHabitData_vote_user;
import 'package:habitr_models/src/graphql/__generated__/operations.req.gql.dart'
    show
        GCreateComment,
        GCreateHabit,
        GCreateUser,
        GDeleteHabit,
        GGetComment,
        GGetHabit,
        GGetSelf,
        GGetUser,
        GListHabits,
        GListHabitsByCategory,
        GSearchHabits,
        GSearchUsers,
        GSubscribeToUser,
        GSubscribeToVotes,
        GUpdateHabit,
        GUpdateUser,
        GVoteForHabit;
import 'package:habitr_models/src/graphql/__generated__/operations.var.gql.dart'
    show
        GAllCommentFieldsVars,
        GAllHabitFieldsVars,
        GAllPrivateUserFieldsVars,
        GAllPublicUserFieldsVars,
        GAllVoteResultFieldsVars,
        GCreateCommentVars,
        GCreateHabitVars,
        GCreateUserVars,
        GDeleteHabitVars,
        GGetCommentVars,
        GGetHabitVars,
        GGetSelfVars,
        GGetUserVars,
        GListHabitsByCategoryVars,
        GListHabitsVars,
        GSearchHabitsVars,
        GSearchUsersVars,
        GSubscribeToUserVars,
        GSubscribeToVotesVars,
        GUpdateHabitVars,
        GUpdateUserVars,
        GVoteForHabitVars;
import 'package:habitr_models/src/graphql/__generated__/schema.schema.gql.dart'
    show
        GAWSDateTime,
        GAccessLevel,
        GCategory,
        GCreateCommentInput,
        GCreateHabitInput,
        GCreateUserInput,
        GDeleteCommentInput,
        GDeleteHabitInput,
        GDeleteUserInput,
        GModelAttributeTypes,
        GModelBooleanInput,
        GModelCategoryInput,
        GModelCommentConditionInput,
        GModelCommentFilterInput,
        GModelFloatInput,
        GModelHabitConditionInput,
        GModelHabitFilterInput,
        GModelIDInput,
        GModelIntInput,
        GModelIntKeyConditionInput,
        GModelSizeInput,
        GModelSortDirection,
        GModelStringInput,
        GModelUserConditionInput,
        GModelUserFilterInput,
        GS3ObjectInput,
        GUpdateCommentInput,
        GUpdateHabitInput,
        GUpdateUserInput,
        GVoteType;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAWSDateTime,
  GAccessLevel,
  GAllCommentFieldsData,
  GAllCommentFieldsData_by,
  GAllCommentFieldsData_habit,
  GAllCommentFieldsData_habit_comments,
  GAllCommentFieldsData_habit_comments_items,
  GAllCommentFieldsVars,
  GAllHabitFieldsData,
  GAllHabitFieldsData_comments,
  GAllHabitFieldsData_comments_items,
  GAllHabitFieldsData_comments_items_by,
  GAllHabitFieldsData_comments_items_habit,
  GAllHabitFieldsData_comments_items_habit_comments,
  GAllHabitFieldsData_comments_items_habit_comments_items,
  GAllHabitFieldsVars,
  GAllPrivateUserFieldsData,
  GAllPrivateUserFieldsData_avatar,
  GAllPrivateUserFieldsData_comments,
  GAllPrivateUserFieldsData_comments_items,
  GAllPrivateUserFieldsData_comments_items_by,
  GAllPrivateUserFieldsData_comments_items_habit,
  GAllPrivateUserFieldsData_comments_items_habit_comments,
  GAllPrivateUserFieldsData_comments_items_habit_comments_items,
  GAllPrivateUserFieldsData_habits,
  GAllPrivateUserFieldsData_habits_items,
  GAllPrivateUserFieldsData_habits_items_comments,
  GAllPrivateUserFieldsData_habits_items_comments_items,
  GAllPrivateUserFieldsData_habits_items_comments_items_by,
  GAllPrivateUserFieldsData_habits_items_comments_items_habit,
  GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments,
  GAllPrivateUserFieldsData_habits_items_comments_items_habit_comments_items,
  GAllPrivateUserFieldsVars,
  GAllPublicUserFieldsData,
  GAllPublicUserFieldsData_avatar,
  GAllPublicUserFieldsData_comments,
  GAllPublicUserFieldsData_comments_items,
  GAllPublicUserFieldsData_comments_items_by,
  GAllPublicUserFieldsData_comments_items_habit,
  GAllPublicUserFieldsData_comments_items_habit_comments,
  GAllPublicUserFieldsData_comments_items_habit_comments_items,
  GAllPublicUserFieldsData_habits,
  GAllPublicUserFieldsData_habits_items,
  GAllPublicUserFieldsData_habits_items_comments,
  GAllPublicUserFieldsData_habits_items_comments_items,
  GAllPublicUserFieldsData_habits_items_comments_items_by,
  GAllPublicUserFieldsData_habits_items_comments_items_habit,
  GAllPublicUserFieldsData_habits_items_comments_items_habit_comments,
  GAllPublicUserFieldsData_habits_items_comments_items_habit_comments_items,
  GAllPublicUserFieldsVars,
  GAllVoteResultFieldsData,
  GAllVoteResultFieldsData_habit,
  GAllVoteResultFieldsData_user,
  GAllVoteResultFieldsVars,
  GCategory,
  GCreateComment,
  GCreateCommentData,
  GCreateCommentData_createComment,
  GCreateCommentData_createComment_by,
  GCreateCommentData_createComment_habit,
  GCreateCommentData_createComment_habit_comments,
  GCreateCommentData_createComment_habit_comments_items,
  GCreateCommentInput,
  GCreateCommentVars,
  GCreateHabit,
  GCreateHabitData,
  GCreateHabitData_createHabit,
  GCreateHabitData_createHabit_comments,
  GCreateHabitData_createHabit_comments_items,
  GCreateHabitData_createHabit_comments_items_by,
  GCreateHabitData_createHabit_comments_items_habit,
  GCreateHabitData_createHabit_comments_items_habit_comments,
  GCreateHabitData_createHabit_comments_items_habit_comments_items,
  GCreateHabitInput,
  GCreateHabitVars,
  GCreateUser,
  GCreateUserData,
  GCreateUserData_createUser,
  GCreateUserInput,
  GCreateUserVars,
  GDeleteCommentInput,
  GDeleteHabit,
  GDeleteHabitData,
  GDeleteHabitData_deleteHabit,
  GDeleteHabitInput,
  GDeleteHabitVars,
  GDeleteUserInput,
  GGetComment,
  GGetCommentData,
  GGetCommentData_getComment,
  GGetCommentData_getComment_by,
  GGetCommentData_getComment_habit,
  GGetCommentData_getComment_habit_comments,
  GGetCommentData_getComment_habit_comments_items,
  GGetCommentVars,
  GGetHabit,
  GGetHabitData,
  GGetHabitData_getHabit,
  GGetHabitData_getHabit_comments,
  GGetHabitData_getHabit_comments_items,
  GGetHabitData_getHabit_comments_items_by,
  GGetHabitData_getHabit_comments_items_habit,
  GGetHabitData_getHabit_comments_items_habit_comments,
  GGetHabitData_getHabit_comments_items_habit_comments_items,
  GGetHabitVars,
  GGetSelf,
  GGetSelfData,
  GGetSelfData_getUser,
  GGetSelfData_getUser_avatar,
  GGetSelfData_getUser_comments,
  GGetSelfData_getUser_comments_items,
  GGetSelfData_getUser_comments_items_by,
  GGetSelfData_getUser_comments_items_habit,
  GGetSelfData_getUser_comments_items_habit_comments,
  GGetSelfData_getUser_comments_items_habit_comments_items,
  GGetSelfData_getUser_habits,
  GGetSelfData_getUser_habits_items,
  GGetSelfData_getUser_habits_items_comments,
  GGetSelfData_getUser_habits_items_comments_items,
  GGetSelfData_getUser_habits_items_comments_items_by,
  GGetSelfData_getUser_habits_items_comments_items_habit,
  GGetSelfData_getUser_habits_items_comments_items_habit_comments,
  GGetSelfData_getUser_habits_items_comments_items_habit_comments_items,
  GGetSelfVars,
  GGetUser,
  GGetUserData,
  GGetUserData_getUser,
  GGetUserData_getUser_avatar,
  GGetUserData_getUser_comments,
  GGetUserData_getUser_comments_items,
  GGetUserData_getUser_comments_items_by,
  GGetUserData_getUser_comments_items_habit,
  GGetUserData_getUser_comments_items_habit_comments,
  GGetUserData_getUser_comments_items_habit_comments_items,
  GGetUserData_getUser_habits,
  GGetUserData_getUser_habits_items,
  GGetUserData_getUser_habits_items_comments,
  GGetUserData_getUser_habits_items_comments_items,
  GGetUserData_getUser_habits_items_comments_items_by,
  GGetUserData_getUser_habits_items_comments_items_habit,
  GGetUserData_getUser_habits_items_comments_items_habit_comments,
  GGetUserData_getUser_habits_items_comments_items_habit_comments_items,
  GGetUserVars,
  GListHabits,
  GListHabitsByCategory,
  GListHabitsByCategoryData,
  GListHabitsByCategoryData_habitsByCategory,
  GListHabitsByCategoryData_habitsByCategory_items,
  GListHabitsByCategoryData_habitsByCategory_items_comments,
  GListHabitsByCategoryData_habitsByCategory_items_comments_items,
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_by,
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit,
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments,
  GListHabitsByCategoryData_habitsByCategory_items_comments_items_habit_comments_items,
  GListHabitsByCategoryVars,
  GListHabitsData,
  GListHabitsData_listHabits,
  GListHabitsData_listHabits_items,
  GListHabitsData_listHabits_items_comments,
  GListHabitsData_listHabits_items_comments_items,
  GListHabitsData_listHabits_items_comments_items_by,
  GListHabitsData_listHabits_items_comments_items_habit,
  GListHabitsData_listHabits_items_comments_items_habit_comments,
  GListHabitsData_listHabits_items_comments_items_habit_comments_items,
  GListHabitsVars,
  GModelAttributeTypes,
  GModelBooleanInput,
  GModelCategoryInput,
  GModelCommentConditionInput,
  GModelCommentFilterInput,
  GModelFloatInput,
  GModelHabitConditionInput,
  GModelHabitFilterInput,
  GModelIDInput,
  GModelIntInput,
  GModelIntKeyConditionInput,
  GModelSizeInput,
  GModelSortDirection,
  GModelStringInput,
  GModelUserConditionInput,
  GModelUserFilterInput,
  GS3ObjectInput,
  GSearchHabits,
  GSearchHabitsData,
  GSearchHabitsData_listHabits,
  GSearchHabitsData_listHabits_items,
  GSearchHabitsData_listHabits_items_comments,
  GSearchHabitsData_listHabits_items_comments_items,
  GSearchHabitsData_listHabits_items_comments_items_by,
  GSearchHabitsData_listHabits_items_comments_items_habit,
  GSearchHabitsData_listHabits_items_comments_items_habit_comments,
  GSearchHabitsData_listHabits_items_comments_items_habit_comments_items,
  GSearchHabitsVars,
  GSearchUsers,
  GSearchUsersData,
  GSearchUsersData_listUsers,
  GSearchUsersData_listUsers_items,
  GSearchUsersData_listUsers_items_avatar,
  GSearchUsersData_listUsers_items_comments,
  GSearchUsersData_listUsers_items_comments_items,
  GSearchUsersData_listUsers_items_comments_items_by,
  GSearchUsersData_listUsers_items_comments_items_habit,
  GSearchUsersData_listUsers_items_comments_items_habit_comments,
  GSearchUsersData_listUsers_items_comments_items_habit_comments_items,
  GSearchUsersData_listUsers_items_habits,
  GSearchUsersData_listUsers_items_habits_items,
  GSearchUsersData_listUsers_items_habits_items_comments,
  GSearchUsersData_listUsers_items_habits_items_comments_items,
  GSearchUsersData_listUsers_items_habits_items_comments_items_by,
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit,
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments,
  GSearchUsersData_listUsers_items_habits_items_comments_items_habit_comments_items,
  GSearchUsersVars,
  GSubscribeToUser,
  GSubscribeToUserData,
  GSubscribeToUserData_subscribeToUser,
  GSubscribeToUserData_subscribeToUser_avatar,
  GSubscribeToUserData_subscribeToUser_comments,
  GSubscribeToUserData_subscribeToUser_comments_items,
  GSubscribeToUserData_subscribeToUser_comments_items_by,
  GSubscribeToUserData_subscribeToUser_comments_items_habit,
  GSubscribeToUserData_subscribeToUser_comments_items_habit_comments,
  GSubscribeToUserData_subscribeToUser_comments_items_habit_comments_items,
  GSubscribeToUserData_subscribeToUser_habits,
  GSubscribeToUserData_subscribeToUser_habits_items,
  GSubscribeToUserData_subscribeToUser_habits_items_comments,
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items,
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_by,
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit,
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments,
  GSubscribeToUserData_subscribeToUser_habits_items_comments_items_habit_comments_items,
  GSubscribeToUserVars,
  GSubscribeToVotes,
  GSubscribeToVotesData,
  GSubscribeToVotesData_subscribeToVotes,
  GSubscribeToVotesData_subscribeToVotes_habit,
  GSubscribeToVotesData_subscribeToVotes_user,
  GSubscribeToVotesVars,
  GUpdateCommentInput,
  GUpdateHabit,
  GUpdateHabitData,
  GUpdateHabitData_updateHabit,
  GUpdateHabitData_updateHabit_comments,
  GUpdateHabitData_updateHabit_comments_items,
  GUpdateHabitData_updateHabit_comments_items_by,
  GUpdateHabitData_updateHabit_comments_items_habit,
  GUpdateHabitData_updateHabit_comments_items_habit_comments,
  GUpdateHabitData_updateHabit_comments_items_habit_comments_items,
  GUpdateHabitInput,
  GUpdateHabitVars,
  GUpdateUser,
  GUpdateUserData,
  GUpdateUserData_updateUser,
  GUpdateUserData_updateUser_avatar,
  GUpdateUserData_updateUser_comments,
  GUpdateUserData_updateUser_comments_items,
  GUpdateUserData_updateUser_comments_items_by,
  GUpdateUserData_updateUser_comments_items_habit,
  GUpdateUserData_updateUser_comments_items_habit_comments,
  GUpdateUserData_updateUser_comments_items_habit_comments_items,
  GUpdateUserData_updateUser_habits,
  GUpdateUserData_updateUser_habits_items,
  GUpdateUserData_updateUser_habits_items_comments,
  GUpdateUserData_updateUser_habits_items_comments_items,
  GUpdateUserData_updateUser_habits_items_comments_items_by,
  GUpdateUserData_updateUser_habits_items_comments_items_habit,
  GUpdateUserData_updateUser_habits_items_comments_items_habit_comments,
  GUpdateUserData_updateUser_habits_items_comments_items_habit_comments_items,
  GUpdateUserInput,
  GUpdateUserVars,
  GVoteForHabit,
  GVoteForHabitData,
  GVoteForHabitData_vote,
  GVoteForHabitData_vote_habit,
  GVoteForHabitData_vote_user,
  GVoteForHabitVars,
  GVoteType
])
final Serializers serializers = _serializersBuilder.build();
