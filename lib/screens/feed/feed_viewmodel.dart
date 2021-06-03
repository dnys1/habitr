import 'dart:async';

import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/VoteResult.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/VoteType.dart';
import 'package:habitr/services/data_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';

class FeedViewModel extends BaseViewModel {
  final AuthBloc _authBloc;
  final ApiService _apiService;
  final DataService _dataService;

  FeedViewModel({
    required AuthBloc authBloc,
    required ApiService apiService,
    required DataService dataService,
  })  : _authBloc = authBloc,
        _apiService = apiService,
        _dataService = dataService;

  late User _user;
  User get currentUser => _user;

  StreamSubscription<AuthState>? _authSubscription;
  StreamSubscription<Habit>? _habitSubscription;
  StreamSubscription<VoteResult>? _voteResultSubscription;

  void init() {
    final authState = _authBloc.state as AuthLoggedIn;
    updateUser(authState.user);
    _authSubscription = _authBloc.stream.listen((state) {
      if (state is AuthLoggedIn && hasListeners) {
        updateUser(state.user);
      }
    });
    _habitSubscription = _dataService.habits.listen((habit) {
      _habits[habit.id] = habit;
      if (hasListeners) {
        notifyListeners();
      }
    });
    _voteResultSubscription = _apiService.voteResults.listen((voteResult) {
      var user = voteResult.user;
      if (user.username == _user.username) {
        _user = _user.copyWith(
          upvotedHabits: user.upvotedHabits,
          downvotedHabits: user.downvotedHabits,
        );
        _upvotedHabits = user.upvotedHabits?.toSet() ?? {};
        _downvotedHabits = user.downvotedHabits?.toSet() ?? {};
      }
      var habit = voteResult.habit;
      if (_habits.containsKey(habit.id)) {
        _habits[habit.id] = _habits[habit.id]!.copyWith(
          ups: habit.ups,
          downs: habit.downs,
        );
      } else {
        _habits[habit.id] = habit;
      }
      _loadingHabits.remove(habit.id);
      if (hasListeners) {
        notifyListeners();
      }
    });
    fetchHabits();
  }

  @override
  void dispose() {
    _authSubscription?.cancel();
    _habitSubscription?.cancel();
    _voteResultSubscription?.cancel();
    super.dispose();
  }

  void updateUser(User user) {
    _user = user;
    _upvotedHabits = (_user.upvotedHabits ?? []).toSet();
    _downvotedHabits = (_user.downvotedHabits ?? []).toSet();
    notifyListeners();
  }

  late Set<String> _upvotedHabits;
  Set<String> get upvotedHabits => _upvotedHabits;

  late Set<String> _downvotedHabits;
  Set<String> get downvotedHabits => _downvotedHabits;

  final Set<String> _loadingHabits = {};
  Set<String> get loadingHabits => _loadingHabits;

  Map<String, Habit> _habits = {};
  Map<String, Habit> get habits => _habits;
  void _setHabits(List<Habit> habits) {
    _habits = {for (var habit in habits) habit.id: habit};
    notifyListeners();
  }

  bool? isUpvoted(Habit habit) {
    if (_upvotedHabits.contains(habit.id)) {
      return true;
    } else if (_downvotedHabits.contains(habit.id)) {
      return false;
    }
    return null;
  }

  Future<void> vote(Habit habit, bool upvote) async {
    _loadingHabits.add(habit.id);
    notifyListeners();
    try {
      VoteType type;
      switch (isUpvoted(habit)) {
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
      await _apiService.voteForHabit(habit.id, type);
    } on Exception catch (e) {
      safePrint('Error voting for habit: $e');
      setError('Error casting vote. Please try again.');
      _loadingHabits.remove(habit.id);
      notifyListeners();
    }
  }

  @override
  void setError(Object error) {
    showErrorSnackbar(error.toString());
  }

  Future<void> fetchHabits() async {
    setBusy(true);
    try {
      final habits = await _apiService.listHabits();
      _setHabits(habits);
    } on Exception catch (e) {
      safePrint('Error fetching habits: $e');
      setError('Error loading feed. Please try again.');
    } finally {
      setBusy(false);
    }
  }

  void logout() {
    _authBloc.add(const AuthLogout());
  }
}
