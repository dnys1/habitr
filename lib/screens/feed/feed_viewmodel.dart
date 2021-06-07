import 'dart:async';

import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/VoteType.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class FeedViewModel extends BaseViewModel {
  final HabitRepository _habitRepository;

  FeedViewModel({
    required HabitRepository habitRepository,
  }) : _habitRepository = habitRepository;

  void init() {
    _pagingController.addPageRequestListener((pageKey) {
      _loadNextPage(
        nextToken: pageKey,
        firstPage: _pagingController.itemList == null ||
            _pagingController.itemList!.isEmpty,
      );
    });
  }

  final int _limit = 20;

  final _pagingController =
      PagingController<String?, Habit>(firstPageKey: null);
  PagingController<String?, Habit> get pagingController => _pagingController;

  Map<String, Habit> get habits => _habitRepository.cache;

  @override
  void setError(Object error) {
    showErrorSnackbar(error.toString());
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _loadNextPage({
    String? nextToken,
    bool firstPage = false,
  }) async {
    if (nextToken == null && !firstPage) return;
    try {
      final results = await _habitRepository.listHabits(
        limit: _limit,
        nextToken: nextToken,
      );
      final isLastPage = results.habits.length < _limit;
      if (isLastPage) {
        _pagingController.appendLastPage(results.habits);
      } else {
        _pagingController.appendPage(results.habits, results.nextToken);
      }
    } on Exception catch (e) {
      safePrint('Error fetching habits: $e');
      setError('Error loading feed. Please try again.');
      _pagingController.error = e;
    }
  }
}
