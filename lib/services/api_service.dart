import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:habitr/models/ModelProvider.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/VoteResult.dart';
import 'package:habitr_models/habitr_models.dart';
import 'package:gql/language.dart' as gql;
import 'package:gql/ast.dart' as ast;

abstract class ApiService {
  Future<User?> getUser(String username);
  Future<List<Habit>> listHabits();
  Future<void> voteForHabit(String habitId, VoteType type);
  Stream<VoteResult> get voteResults;
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
  Future<User?> getUser(String username) async {
    const operationName = 'getUser';
    final query = GGetUser(
      (b) => b..vars.username = username,
    );

    final user = await _runQuery(
      const ast.DocumentNode(definitions: [
        AllUserFields,
        GetUser,
      ]),
      operationName,
      query.vars.toJson(),
    );

    if (user == null) {
      return null;
    }
    return User.fromJson(user);
  }

  @override
  Future<List<Habit>> listHabits() async {
    const operationName = 'listHabits';
    final query = GListHabits();

    final resp = await _runQuery(
      const ast.DocumentNode(definitions: [
        AllHabitFields,
        ListHabits,
      ]),
      operationName,
      query.vars.toJson(),
    );
    final habits = resp?['items'] as List?;

    if (habits is! List) {
      return const [];
    }
    return habits
        .map((habit) => Habit.fromJson(habit as Map<String, dynamic>))
        .toList();
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
        print('Got vote result: $data');
        final map = jsonDecode(data.data) as Map<String, dynamic>;
        final voteResult = map[operationName] as Map<String, dynamic>?;
        if (voteResult == null) {
          return;
        }
        _voteResultStreamController.add(VoteResult.fromJson(voteResult));
      },
      onEstablished: () {
        print('Established vote result subscription');
      },
      onError: (error) => _voteResultStreamController.addError(error),
      onDone: () {},
    );
    _voteResultStreamController.onCancel ??= () {
      _voteResultSubscription?.cancel();
      _voteResultSubscription = null;
    };

    return _voteResultStreamController.stream;
  }
}
