import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/widgets/habit/habit_list_tile.dart';
import 'package:habitr/widgets/user/user_list_tile.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({required this.habits, required this.users, super.key});

  const SearchResults.loading({super.key})
      : habits = null,
        users = null;

  static const _placeholderSize = 72.0;

  final List<Habit>? habits;
  final List<User>? users;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child:
                    Text('Habits', style: Theme.of(context).textTheme.caption),
              ),
            ),
            if (habits == null)
              const SizedBox(
                height: _placeholderSize,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (habits!.isEmpty)
              const SizedBox(
                height: _placeholderSize,
                child: Center(child: Text('No results')),
              )
            else
              for (var habit in habits!) HabitListTile(habit.id),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child:
                    Text('Users', style: Theme.of(context).textTheme.caption),
              ),
            ),
            if (users == null)
              const SizedBox(
                height: _placeholderSize,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (users!.isEmpty)
              const SizedBox(
                height: _placeholderSize,
                child: Center(child: Text('No results')),
              )
            else
              for (var user in users!) UserListTile(user.username),
          ],
        ),
      ),
    );
  }
}
