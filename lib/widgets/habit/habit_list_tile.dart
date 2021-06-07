import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/VoteType.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class HabitListTile extends StatelessWidget {
  final String habitId;

  const HabitListTile(this.habitId, {Key? key}) : super(key: key);

  static final loadingColor = Colors.grey[300]!;

  Future<void> _vote(HabitRepository repo, String habitId, bool upvote) async {
    try {
      await repo.voteForHabit(habitId, upvote);
    } on Exception catch (e) {
      safePrint('Error voting for habit: $e');
      showErrorSnackbar('Error casting vote. Please try again.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final repo = Provider.of<HabitRepository>(context, listen: false);
    return FutureBuilder(
      future: repo.getHabit(habitId),
      builder: (context, snapshot) {
        return Selector<HabitRepository, Tuple3<Habit?, bool, bool?>>(
          selector: (_, repo) => Tuple3(
            repo.cache[habitId],
            repo.isLoading(habitId),
            repo.isUpvoted(habitId),
          ),
          builder: (context, habitStatus, _) {
            var habit = habitStatus.item1;
            var isLoading = habit == null;
            var isProcessing = habitStatus.item2;
            var isUpvoted = habitStatus.item3;
            return ListTile(
              leading: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.expand_less,
                        color: isLoading || isProcessing
                            ? loadingColor
                            : isUpvoted == true
                                ? Colors.amber
                                : null,
                      ),
                      onPressed: isLoading || isProcessing
                          ? null
                          : () => _vote(repo, habit!.id, true),
                    ),
                  ),
                  Text(
                    isLoading
                        ? ''
                        : '${(habit!.ups ?? 0) - (habit.downs ?? 0)}',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color:
                              isLoading || isProcessing ? loadingColor : null,
                        ),
                  ),
                  Expanded(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.expand_more,
                        color: isLoading || isProcessing
                            ? loadingColor
                            : isUpvoted == false
                                ? Colors.amber
                                : null,
                      ),
                      onPressed: isLoading || isProcessing
                          ? null
                          : () => _vote(repo, habit!.id, false),
                    ),
                  ),
                ],
              ),
              title:
                  isLoading ? const Text('Loading...') : Text(habit!.tagline),
              subtitle: isLoading || habit?.author == null
                  ? null
                  : Text('@' + habit!.author!.username),
            );
          },
        );
      },
    );
  }
}
