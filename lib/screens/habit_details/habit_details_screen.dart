import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class HabitDetailsScreen extends StatelessWidget {
  final String habitId;

  const HabitDetailsScreen(this.habitId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Habit?>(
      future: Provider.of<HabitRepository>(context, listen: false)
          .getHabit(habitId),
      builder: (context, snapshot) {
        var isLoading = snapshot.data == null;
        var habit = snapshot.data;
        return Scaffold(
          appBar: AppBar(
            title: isLoading
                ? null
                : Text(
                    habit!.tagline,
                    overflow: TextOverflow.ellipsis,
                  ),
          ),
          body: isLoading
              ? const Center(child: CircularProgressIndicator())
              : Selector<HabitRepository, Tuple3<Habit?, bool, bool?>>(
                  selector: (_, repo) => Tuple3(
                    repo.cache[habitId],
                    repo.isLoading(habitId),
                    repo.isUpvoted(habitId),
                  ),
                  builder: (context, habitStatus, _) {
                    var habit = habitStatus.item1!;
                    var isLoading = habitStatus.item2;
                    var isUpvoted = habitStatus.item3;
                    var category = habit.category;
                    var author = habit.author?.username;
                    return Column(
                      children: [
                        Text(habit.tagline),
                        if (category != null) Text(category),
                        if (author != null) Text('@' + author),
                      ],
                    );
                  },
                ),
        );
      },
    );
  }
}
