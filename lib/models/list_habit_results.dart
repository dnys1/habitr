import 'package:habitr/models/Habit.dart';

class ListHabitResults {
  final List<Habit> habits;
  final String? nextToken;

  const ListHabitResults({
    required this.habits,
    required this.nextToken,
  });
}
