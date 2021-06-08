import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/widgets/search_results/search_results.dart';
import 'package:stream_transform/stream_transform.dart';

class SearchService extends SearchDelegate {
  final HabitRepository _habitRepository;
  final UserRepository _userRepository;

  SearchService({
    required HabitRepository habitRepository,
    required UserRepository userRepository,
  })  : _habitRepository = habitRepository,
        _userRepository = userRepository,
        super(
          searchFieldLabel: 'Find users or habits',
          textInputAction: TextInputAction.search,
        ) {
    _resultsStream = _queryStreamController.stream
        .debounce(const Duration(milliseconds: 300))
        .asyncExpand((query) async* {
      if (query == _lastQuery) {
        yield _lastResults;
        return;
      }
      yield const SearchResults.loading();
      try {
        final result = await Future.wait([
          _habitRepository.searchHabits(query),
          _userRepository.searchUsers(query),
        ], eagerError: true);
        final habits = result[0] as List<Habit>;
        final users = result[1] as List<User>;

        yield _lastResults = SearchResults(habits: habits, users: users);
      } catch (e) {
        yield _errorWidget;
      } finally {
        _lastQuery = query;
      }
    });
  }

  static const _errorWidget = Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('Error performing search. Please try again.'),
    ),
  );

  Widget _lastResults = const SizedBox.shrink();
  String? _lastQuery;
  late final Stream<Widget> _resultsStream;
  final _queryStreamController = StreamController<String>.broadcast();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () {
          query = '';
        },
        child: const Text('Clear'),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.close),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    _queryStreamController.add(query);
    return StreamBuilder<Widget>(
      initialData: _lastResults,
      stream: _resultsStream,
      builder: (context, snapshot) {
        return snapshot.data!;
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _queryStreamController.add(query);
    return StreamBuilder<Widget>(
      initialData: _lastResults,
      stream: _resultsStream,
      builder: (context, snapshot) {
        return snapshot.data!;
      },
    );
  }
}
