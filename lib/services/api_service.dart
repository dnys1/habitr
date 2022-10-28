import 'dart:async';
import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart' hide Category;
import 'package:gql/ast.dart' as ast;
import 'package:gql/language.dart' as gql;
import 'package:habitr/models/ModelProvider.dart';
import 'package:habitr/models/list_habit_results.dart';
import 'package:habitr_models/habitr_models.dart';
import 'package:stream_transform/stream_transform.dart';

/// Handles interacting with the GraphQL and REST APIs.
abstract class ApiService {
  /// Returns a [User] for the given [username], if found, or `null`, if not.
  ///
  /// Set [self] = `true` for retrieving personal data.
  Future<User?> getUser(String username, {bool self});

  /// Returns a [Habit] for the given [id], if found, or `null`, if not.
  Future<Habit?> getHabit(String id);

  /// Returns a [Comment] for the given [commentId], if found, or `null`, if not.
  Future<Comment?> getComment(String commentId);

  /// Returns habits for the given [category], if specified, or all categories, if not.
  ///
  /// Use [nextToken] on subsequent calls to retrieve more items.
  Future<ListHabitResults> listHabits({
    Category? category,
    required int limit,
    String? nextToken,
  });

  /// Returns users which match the provided [query].
  ///
  /// Matches [username], [displayUsername], and [name] fields.
  Future<List<User>> searchUsers(
    String query,
    String excludeUsername, {
    required int limit,
  });

  /// Returns habits which match the provided [query].
  ///
  /// Matches [tagline] and [details] fields.
  Future<List<Habit>> searchHabits(String query, {required int limit});

  /// Creates a [Habit] with the specified parameters.
  Future<Habit> createHabit({
    required String tagline,
    required Category category,
    String? details,
  });

  /// Creates a [Comment] with the given [comment] and [habitId].
  Future<Comment> createComment(String comment, String habitId);

  /// Casts a vote for the given [habitId] of the given [type]. Will throw an
  /// [Exception] if the user cannot perform that action.
  Future<void> voteForHabit(String habitId, VoteType type);

  /// Streams the results of ongoing votes.
  ///
  /// Callers must ensure they close the stream upon logout.
  Stream<VoteResult> get voteResults;

  /// Streams the creation and update of habits.
  Stream<Habit> get habitUpdates;

  /// Streams the creation and update of comments.
  Stream<Comment> get commentUpdates;

  /// Returns true if the given [username] is taken.
  Future<bool> usernameExists(String username);

  /// Updates the given [user].
  Future<User?> updateUser(
    User user, {
    String? name,
    String? username,
    S3Object? avatar,
  });

  /// Deletes a [Habit].
  Future<void> deleteHabit(Habit habit);
}

class AmplifyApiService
    with AWSDebuggable, AWSLoggerMixin
    implements ApiService {
  Stream<VoteResult>? _voteResultStream;
  Stream<Habit>? _habitStream;
  Stream<Comment>? _commentStream;

  @override
  Stream<VoteResult> get voteResults {
    const operationName = 'subscribeToVotes';
    const document = ast.DocumentNode(
      definitions: [
        AllVoteResultFields,
        SubscribeToVotes,
      ],
    );

    return _voteResultStream ??= Amplify.API
        .subscribe<String>(
          GraphQLRequest(document: gql.printNode(document)),
          onEstablished: () => logger.debug(
            'subscribeToVotes subscription established',
          ),
        )
        .map((data) {
          final map = jsonDecode(data.data!) as Map<String, dynamic>;
          final voteResult = map[operationName] as Map<String, dynamic>?;
          if (voteResult == null) {
            return null;
          }
          return VoteResult.fromJson(voteResult);
        })
        .whereType<VoteResult>()
        .asBroadcastStream(onCancel: (_) => _voteResultStream = null);
  }

  @override
  Stream<Habit> get habitUpdates {
    const onCreateHabitName = 'onCreateHabit';
    const onCreateHabit = ast.DocumentNode(
      definitions: [
        AllCommentFields,
        AllHabitFields,
        OnCreateHabit,
      ],
    );
    const onUpdateHabitName = 'onUpdateHabit';
    const onUpdateHabit = ast.DocumentNode(
      definitions: [
        AllCommentFields,
        AllHabitFields,
        OnUpdateHabit,
      ],
    );

    final onCreateStream = Amplify.API
        .subscribe<Habit>(
      GraphQLRequest(
        document: gql.printNode(onCreateHabit),
        decodePath: onCreateHabitName,
        modelType: Habit.classType,
      ),
      onEstablished: () => logger.debug(
        'onCreateHabit subscription established',
      ),
    )
        .map((event) {
      logger.info('Got event: ${event.data}, ${event.errors}');
      return event.data;
    }).whereType<Habit>();
    final onUpdateStream = Amplify.API
        .subscribe<Habit>(
      GraphQLRequest(
        document: gql.printNode(onUpdateHabit),
        decodePath: onUpdateHabitName,
        modelType: Habit.classType,
      ),
      onEstablished: () => logger.debug(
        'onUpdateHabit subscription established',
      ),
    )
        .map((event) {
      logger.info('Got event: ${event.data}, ${event.errors}');
      return event.data;
    }).whereType<Habit>();

    return _habitStream ??= onCreateStream
        .merge(onUpdateStream)
        .asBroadcastStream(onCancel: (_) => _habitStream = null);
  }

  @override
  Stream<Comment> get commentUpdates {
    const onCreateCommentName = 'onCreateComment';
    const onCreateComment = ast.DocumentNode(
      definitions: [
        AllCommentFields,
        OnCreateComment,
      ],
    );
    const onUpdateCommentName = 'onUpdateComment';
    const onUpdateComment = ast.DocumentNode(
      definitions: [
        AllCommentFields,
        OnUpdateComment,
      ],
    );

    final onCreateStream = Amplify.API
        .subscribe<Comment>(
      GraphQLRequest(
        document: gql.printNode(onCreateComment),
        decodePath: onCreateCommentName,
        modelType: Comment.classType,
      ),
      onEstablished: () => logger.debug(
        'onCreateComment subscription established',
      ),
    )
        .map((event) {
      logger.info('Got event: ${event.data}, ${event.errors}');
      return event.data;
    }).whereType<Comment>();
    final onUpdateStream = Amplify.API
        .subscribe<Comment>(
      GraphQLRequest(
        document: gql.printNode(onUpdateComment),
        decodePath: onUpdateCommentName,
        modelType: Comment.classType,
      ),
      onEstablished: () => logger.debug(
        'onUpdateComment subscription established',
      ),
    )
        .map((event) {
      logger.info('Got event: ${event.data}, ${event.errors}');
      return event.data;
    }).whereType<Comment>();

    return _commentStream ??= onCreateStream
        .merge(onUpdateStream)
        .asBroadcastStream(onCancel: (_) => _commentStream = null);
  }

  Future<Map<String, dynamic>?> _runQuery(
    ast.DocumentNode operation,
    String operationName,
    Map<String, dynamic> vars,
  ) async {
    final resp = await Amplify.API
        .query<String>(
          request: GraphQLRequest(
            document: gql.printNode(operation),
            variables: vars,
          ),
        )
        .response;
    if (resp.hasErrors) {
      throw Exception(resp.errors);
    }

    final data = resp.data != null
        ? jsonDecode(resp.data!) as Map<String, dynamic>
        : null;
    if (data is! Map<String, dynamic>) {
      return null;
    }

    return (data[operationName] as Map?)?.cast();
  }

  @override
  Future<User?> getUser(String username, {bool self = false}) async {
    const operationName = 'getUser';
    final query = GGetUser(
      (b) => b..vars.username = username,
    );

    final user = await _runQuery(
      ast.DocumentNode(
        definitions: [
          AllCommentFields,
          AllHabitFields,
          if (self) ...[
            AllPrivateUserFields,
            GetSelf,
          ] else ...[
            AllPublicUserFields,
            GetUser,
          ],
        ],
      ),
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
    Category? category,
    required int limit,
    String? nextToken,
  }) async {
    final withCategoryFilter = category != null;
    final operationName =
        withCategoryFilter ? 'habitsByCategory' : 'listHabits';
    Map<String, dynamic> vars;
    if (withCategoryFilter) {
      final query = GListHabitsByCategory((b) {
        b
          ..vars.category = GCategory.valueOf(category.string)
          ..vars.limit = limit;
        if (nextToken != null) {
          b.vars.nextToken = nextToken;
        }
      });
      vars = query.vars.toJson();
    } else {
      final query = GListHabits((b) {
        b.vars.limit = limit;
        if (nextToken != null) {
          b.vars.nextToken = nextToken;
        }
      });
      vars = query.vars.toJson();
    }

    final resp = await _runQuery(
      ast.DocumentNode(
        definitions: [
          AllHabitFields,
          AllCommentFields,
          if (withCategoryFilter) ListHabitsByCategory else ListHabits,
        ],
      ),
      operationName,
      vars,
    );
    if (resp == null) {
      throw Exception('Unable to retrieve habits.');
    }
    final habits = resp['items'] as List?;

    if (habits is! List) {
      throw Exception('Unable to retrieve habits.');
    }

    return ListHabitResults(
      habits: habits.cast<Map<String, dynamic>>().map(Habit.fromJson).toList(),
      nextToken: resp['nextToken'] as String?,
    );
  }

  @override
  Future<User?> updateUser(
    User user, {
    String? name,
    String? username,
    S3Object? avatar,
  }) async {
    if (name == null && username == null && avatar == null) {
      return null;
    }
    const operationName = 'updateUser';
    final mutation = GUpdateUser((b) {
      b.vars.input.username = user.username;
      if (name != null) {
        b.vars.input.name = name;
      }
      if (username != null) {
        b.vars.input.displayUsername = username;
      }
      if (avatar != null) {
        b.vars.input.avatar.replace(GS3ObjectInput.fromJson(avatar.toJson())!);
      }
    });

    final resp = await _runQuery(
      const ast.DocumentNode(
        definitions: [
          AllHabitFields,
          AllCommentFields,
          AllPrivateUserFields,
          UpdateUser,
        ],
      ),
      operationName,
      mutation.vars.toJson(),
    );

    if (resp == null) {
      return null;
    }

    return User.fromJson(resp);
  }

  @override
  Future<void> voteForHabit(String habitId, VoteType type) async {
    const operationName = 'vote';
    final mutation = GVoteForHabit(
      (b) => b
        ..vars.habitId = habitId
        ..vars.type = GVoteType.valueOf(type.string),
    );

    final resp = await _runQuery(
      const ast.DocumentNode(
        definitions: [
          AllVoteResultFields,
          VoteForHabit,
        ],
      ),
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
      const ast.DocumentNode(
        definitions: [
          AllHabitFields,
          AllCommentFields,
          GetHabit,
        ],
      ),
      operationName,
      query.vars.toJson(),
    );

    if (resp == null) {
      return null;
    }

    return Habit.fromJson(resp);
  }

  @override
  Future<Comment?> getComment(String commentId) async {
    const operationName = 'getComment';
    const operation = ast.DocumentNode(
      definitions: [
        AllCommentFields,
        GetComment,
      ],
    );
    final query = GGetComment((b) => b..vars.commentId = commentId);

    final resp = await _runQuery(
      operation,
      operationName,
      query.vars.toJson(),
    );

    if (resp == null) {
      return null;
    }

    return Comment.fromJson(resp);
  }

  @override
  Future<bool> usernameExists(String username) async {
    final request = UserExistsRequest(username);
    final resp = await Amplify.API
        .post(
          '/user/exists',
          body: HttpPayload.json(request),
        )
        .response;
    if (resp.statusCode != 200) {
      throw Exception('${resp.statusCode}: ${resp.decodeBody()}');
    }

    final json = jsonDecode(resp.decodeBody()) as Map<String, dynamic>;
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
      const ast.DocumentNode(
        definitions: [
          AllHabitFields,
          AllCommentFields,
          SearchHabits,
        ],
      ),
      operationName,
      operation.vars.toJson(),
    );

    final items = resp?['items'] as List?;
    if (items is! List) {
      return [];
    }

    return items.cast<Map<String, dynamic>>().map(Habit.fromJson).toList();
  }

  @override
  Future<List<User>> searchUsers(
    String query,
    String excludeUsername, {
    required int limit,
  }) async {
    const operationName = 'searchUsers';
    final operation = GSearchUsers(
      (b) => b
        ..vars.query = query
        ..vars.limit = limit
        ..vars.excludeUsername = excludeUsername,
    );

    final resp = await _runQuery(
      const ast.DocumentNode(
        definitions: [
          AllPublicUserFields,
          AllHabitFields,
          AllCommentFields,
          SearchUsers,
        ],
      ),
      operationName,
      operation.vars.toJson(),
    );

    final items = resp?['items'] as List?;
    if (items is! List) {
      return [];
    }

    return items.cast<Map<String, dynamic>>().map(User.fromJson).toList();
  }

  @override
  Future<Comment> createComment(String comment, String habitId) async {
    const operationName = 'createComment';
    final mutation = GCreateComment(
      (b) => b
        ..vars.comment = comment
        ..vars.habitId = habitId,
    );

    final resp = await _runQuery(
      const ast.DocumentNode(
        definitions: [
          AllCommentFields,
          CreateComment,
        ],
      ),
      operationName,
      mutation.vars.toJson(),
    );

    if (resp == null) {
      throw Exception('Could not create comment');
    }

    return Comment.fromJson(resp);
  }

  @override
  Future<Habit> createHabit({
    required String tagline,
    required Category category,
    String? details,
  }) async {
    const operationName = 'createHabit';
    final mutation = GCreateHabit(
      (b) {
        b.vars.tagline = tagline;
        b.vars.category = GCategory.valueOf(category.string);
        if (details != null) {
          b.vars.details = details;
        }
      },
    );

    final resp = await _runQuery(
      const ast.DocumentNode(
        definitions: [
          CreateHabit,
          AllHabitFields,
          AllCommentFields,
        ],
      ),
      operationName,
      mutation.vars.toJson(),
    );

    if (resp == null) {
      throw Exception('Unable to create habit');
    }

    return Habit.fromJson(resp);
  }

  @override
  Future<void> deleteHabit(Habit habit) async {
    const operationName = 'deleteHabit';
    final mutation = GDeleteHabit(
      (b) => b..vars.habitId = habit.id,
    );

    await _runQuery(
      const ast.DocumentNode(
        definitions: [
          DeleteHabit,
        ],
      ),
      operationName,
      mutation.vars.toJson(),
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyApiService';
}
