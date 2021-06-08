import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:habitr/models/ModelProvider.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/VoteResult.dart';
import 'package:habitr/models/list_habit_results.dart';
import 'package:habitr_models/habitr_models.dart';
import 'package:gql/language.dart' as gql;
import 'package:gql/ast.dart' as ast;
import 'package:http/http.dart' as http;

abstract class ApiService {
  Future<User?> getUser(String username, {bool self});
  Future<ListHabitResults> listHabits({required int limit, String? nextToken});
  Future<Habit?> getHabit(String id);
  Future<void> voteForHabit(String habitId, VoteType type);
  Stream<VoteResult> get voteResults;
  Future<bool> usernameExists(String username);
  Future<List<Habit>> searchHabits(String query, {required int limit});
  Future<List<User>> searchUsers(String query, {required int limit});
}

class AmplifyApiService implements ApiService {
  Future<Map<String, dynamic>?> _runQuery(
    ast.DocumentNode operation,
    String operationName,
    Map<String, dynamic> vars,
  ) async {
    final resp = await Amplify.API
        .query(
          request: GraphQLRequest(
            document: gql.printNode(operation),
            variables: vars,
          ),
        )
        .response;
    if (resp.errors.isNotEmpty) {
      throw Exception(resp.errors.first.toString());
    }

    final data = resp.data != null ? jsonDecode(resp.data) : null;
    if (data == null || data is! Map<String, dynamic>) {
      return null;
    }

    return data[operationName];
  }

  @override
  Future<User?> getUser(String username, {bool self = false}) async {
    const operationName = 'getUser';
    final query = GGetUser(
      (b) => b..vars.username = username,
    );

    final user = await _runQuery(
      ast.DocumentNode(
          definitions: self
              ? [AllPrivateUserFields, GetSelf]
              : [AllPublicUserFields, GetUser]),
      operationName,
      query.vars.toJson(),
    );

    if (user == null) {
      return null;
    }
    return User.fromJson(user);
  }

  @override
  Future<ListHabitResults> listHabits({
    required int limit,
    String? nextToken,
  }) async {
    const operationName = 'listHabits';
    final query = GListHabits((b) {
      b.vars.limit = limit;
      if (nextToken != null) {
        b.vars.nextToken = nextToken;
      }
    });

    final resp = await _runQuery(
      const ast.DocumentNode(definitions: [
        AllHabitFields,
        ListHabits,
      ]),
      operationName,
      query.vars.toJson(),
    );
    if (resp == null) {
      throw Exception('Unable to retrieve habits.');
    }
    final habits = resp['items'] as List?;

    if (habits is! List) {
      throw Exception('Unable to retrieve habits.');
    }

    return ListHabitResults(
      habits: habits
          .map((habit) => Habit.fromJson(habit as Map<String, dynamic>))
          .toList(),
      nextToken: resp['nextToken'] as String?,
    );
  }

  Future<void> updateUser(
    User user, {
    String? name,
    S3Object? avatar,
  }) async {
    const operationName = 'updateUser';
    final mutation = GUpdateUser((b) {
      b.vars.input.username = user.username;
      b.vars.input.G_version = user.version;
      if (name != null) {
        b.vars.input.name = name;
      }
      if (avatar != null) {
        b.vars.input.avatar.replace(GS3ObjectInput.fromJson(avatar.toJson())!);
      }
    });

    await _runQuery(
      const ast.DocumentNode(definitions: [
        AllPrivateUserFields,
        UpdateUser,
      ]),
      operationName,
      mutation.vars.toJson(),
    );
  }

  @override
  Future<void> voteForHabit(String habitId, VoteType type) async {
    const operationName = 'vote';
    final mutation = GVoteForHabit(
      (b) => b
        ..vars.habitId = habitId
        ..vars.type = GVoteType.valueOf(type.toString().split('.')[1]),
    );

    final resp = await _runQuery(
      const ast.DocumentNode(definitions: [
        AllVoteResultFields,
        VoteForHabit,
      ]),
      operationName,
      mutation.vars.toJson(),
    );

    if (resp == null) {
      throw Exception('Could not vote for habit. Please try again.');
    }
  }

  @override
  Future<Habit?> getHabit(String id) async {
    const operationName = 'getHabit';
    final query = GGetHabit((b) => b..vars.habitId = id);

    final resp = await _runQuery(
      const ast.DocumentNode(definitions: [
        AllHabitFields,
        GetHabit,
      ]),
      operationName,
      query.vars.toJson(),
    );

    if (resp == null) {
      return null;
    }

    return Habit.fromJson(resp);
  }

  final _voteResultStreamController = StreamController<VoteResult>.broadcast();
  GraphQLSubscriptionOperation? _voteResultSubscription;

  @override
  Stream<VoteResult> get voteResults {
    const operationName = 'subscribeToVotes';
    const _document = ast.DocumentNode(definitions: [
      AllVoteResultFields,
      SubscribeToVotes,
    ]);

    _voteResultSubscription ??= Amplify.API.subscribe<String>(
      request: GraphQLRequest(document: gql.printNode(_document)),
      onData: (data) {
        final map = jsonDecode(data.data) as Map<String, dynamic>;
        final voteResult = map[operationName] as Map<String, dynamic>?;
        if (voteResult == null) {
          return;
        }
        _voteResultStreamController.add(VoteResult.fromJson(voteResult));
      },
      onEstablished: () {},
      onError: (error) => _voteResultStreamController.addError(error),
      onDone: () {},
    );
    _voteResultStreamController.onCancel ??= () {
      _voteResultSubscription?.cancel();
      _voteResultSubscription = null;
      _voteResultStreamController.onCancel = null;
    };

    return _voteResultStreamController.stream;
  }

  @override
  Future<bool> usernameExists(String username) async {
    var request = UserExistsRequest(username);
    // TODO: update for envs
    final resp = await http.post(
      Uri.parse(
        'https://4ccix50n24.execute-api.us-west-2.amazonaws.com/dev/user/exists',
      ),
      body: jsonEncode(request),
    );
    if (resp.statusCode != 200) {
      throw Exception('${resp.statusCode}: ${resp.body}');
    }

    final json = jsonDecode(resp.body) as Map<String, dynamic>;
    return UserExistsResponse.fromJson(json).exists;
  }

  @override
  Future<List<Habit>> searchHabits(String query, {required int limit}) async {
    const operationName = 'searchHabits';
    final operation = GSearchHabits(
      (b) => b
        ..vars.query = query
        ..vars.limit = limit,
    );

    final resp = await _runQuery(
      const ast.DocumentNode(definitions: [
        SearchHabits,
      ]),
      operationName,
      operation.vars.toJson(),
    );

    var items = resp?['items'];
    if (resp == null || items is! List) {
      return [];
    }

    return items
        .map((json) => Habit.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<User>> searchUsers(String query, {required int limit}) async {
    const operationName = 'searchUsers';
    final operation = GSearchUsers(
      (b) => b
        ..vars.query = query
        ..vars.limit = limit,
    );

    final resp = await _runQuery(
      const ast.DocumentNode(definitions: [
        SearchUsers,
      ]),
      operationName,
      operation.vars.toJson(),
    );

    var items = resp?['items'];
    if (resp == null || items is! List) {
      return [];
    }

    return items
        .map((json) => User.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
