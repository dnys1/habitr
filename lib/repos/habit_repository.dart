import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/models/VoteResult.dart';
import 'package:habitr/models/VoteType.dart';
import 'package:habitr/models/list_habit_results.dart';
import 'package:habitr/services/api_service.dart';

abstract class HabitRepository extends ChangeNotifier {
  Map<String, Habit> get cache;
  Future<ListHabitResults> listHabits({
    int limit = 20,
    String? nextToken,
  });
  Future<Habit> getHabit(String id);
  Future<List<Habit>> searchHabits(String query);
  Future<void> voteForHabit(String habitId, bool upvote);
  Stream<Habit> get habitUpdates;
  bool? isUpvoted(String habitId);
  bool isLoading(String habitId);
}

class HabitRepositoryImpl extends HabitRepository {
  final ApiService _apiService;
  final AuthBloc _authBloc;

  final Map<String, Habit> _habitCache = {};
  final Set<String> _loadingHabits = {};

  User? _user;
  Set<String> _upvotedHabits = {};
  Set<String> _downvotedHabits = {};

  HabitRepositoryImpl({
    required ApiService apiService,
    required AuthBloc authBloc,
  })  : _apiService = apiService,
        _authBloc = authBloc {
    init();
  }

  Future<void> init() async {
    await _authBloc.isInitialized;

    var state = _authBloc.state;
    if (state is AuthLoggedIn) {
      _updateUser(state.user);
    }
    _authSubscription = _authBloc.stream.listen((state) {
      if (state is AuthLoggedIn) {
        _updateUser(state.user);
      }
    });

    _voteResultSubscription = _apiService.voteResults.listen((voteResult) {
      var user = voteResult.user;
      if (user.username == _user?.username) {
        _updateUser(user);
      }
      var habit = voteResult.habit;
      _updateHabit(habit);
      _loadingHabits.remove(habit.id);
      notifyListeners();
    });
  }

  StreamSubscription<AuthState>? _authSubscription;
  StreamSubscription<VoteResult>? _voteResultSubscription;

  @override
  void dispose() {
    _authSubscription?.cancel();
    _voteResultSubscription?.cancel();
    super.dispose();
  }

  void _setHabits(List<Habit> habits) {
    _habitCache.addAll({for (var habit in habits) habit.id: habit});
    notifyListeners();
  }

  void _updateHabit(Habit habit) {
    if (_habitCache.containsKey(habit.id)) {
      _habitCache[habit.id] = _habitCache[habit.id]!.copyWith(
        ups: habit.ups,
        downs: habit.downs,
      );
    } else {
      _habitCache[habit.id] = habit;
    }
    notifyListeners();
  }

  void _updateUser(User user) {
    if (_user == null) {
      _user = user;
    } else {
      _user = _user!.copyWith(
        upvotedHabits: user.upvotedHabits,
        downvotedHabits: user.downvotedHabits,
      );
    }
    _upvotedHabits = (_user!.upvotedHabits?.toSet()) ?? {};
    _downvotedHabits = (_user!.downvotedHabits?.toSet()) ?? {};
    notifyListeners();
  }

  @override
  bool? isUpvoted(String habitId) {
    if (_upvotedHabits.contains(habitId)) {
      return true;
    } else if (_downvotedHabits.contains(habitId)) {
      return false;
    }
    return null;
  }

  @override
  bool isLoading(String habitId) => _loadingHabits.contains(habitId);

  @override
  Map<String, Habit> get cache => _habitCache;

  @override
  Stream<Habit> get habitUpdates {
    throw UnimplementedError();
  }

  @override
  Future<ListHabitResults> listHabits({
    int limit = 20,
    String? nextToken,
  }) async {
    final listHabitResults = await _apiService.listHabits(
      limit: limit,
      nextToken: nextToken,
    );
    _setHabits(listHabitResults.habits);
    return listHabitResults;
  }

  @override
  Future<Habit> getHabit(String id) async {
    if (_habitCache.containsKey(id)) {
      return _habitCache[id]!;
    }
    final habit = await _apiService.getHabit(id);
    _updateHabit(habit);
    return habit;
  }

  @override
  Future<List<Habit>> searchHabits(String query) {
    // TODO: implement searchHabits
    throw UnimplementedError();
  }

  @override
  Future<void> voteForHabit(String habitId, bool upvote) async {
    _loadingHabits.add(habitId);
    notifyListeners();
    try {
      VoteType type;
      switch (isUpvoted(habitId)) {
        case true:
          type = upvote ? VoteType.removeUpvote : VoteType.downvote;
          break;
        case false:
          type = upvote ? VoteType.upvote : VoteType.removeDownvote;
          break;
        default:
          type = upvote ? VoteType.upvote : VoteType.downvote;
          break;
      }
      await _apiService.voteForHabit(habitId, type);
    } on Exception {
      _loadingHabits.remove(habitId);
      notifyListeners();
      rethrow;
    }
  }
}
