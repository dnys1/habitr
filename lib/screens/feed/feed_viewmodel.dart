import 'dart:async';

import 'package:habitr/models/Category.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

enum CategorySort { createdAt, updatedAt, ups, score }

class FeedViewModel extends BaseViewModel {
  final HabitRepository _habitRepository;

  FeedViewModel({
    Category? category,
    CategorySort sortField = CategorySort.createdAt,
    required HabitRepository habitRepository,
  })  : _category = category,
        _sortField = sortField,
        _habitRepository = habitRepository {
    _pagingController.addPageRequestListener((pageKey) {
      _loadNextPage(
        nextToken: pageKey,
        firstPage: _pagingController.itemList == null ||
            _pagingController.itemList!.isEmpty,
      );
    });
  }

  final Category? _category;
  final int _limit = 20;

  CategorySort _sortField;
  void setSortField(CategorySort sortField) {
    _sortField = sortField;
    _resort();
  }

  void _resort() {
    _pagingController.itemList?.sort((a, b) {
      switch (_sortField) {
        case CategorySort.createdAt:
          return a.createdAt.compareTo(b.createdAt);
        case CategorySort.updatedAt:
          return a.updatedAt.compareTo(b.updatedAt);
        case CategorySort.ups:
          return (a.ups ?? 0).compareTo(b.ups ?? 0);
        case CategorySort.score:
          return a.score.compareTo(b.score);
      }
    });
  }

  final _pagingController =
      PagingController<String?, Habit>(firstPageKey: null);
  PagingController<String?, Habit> get pagingController => _pagingController;

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
        category: _category,
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
