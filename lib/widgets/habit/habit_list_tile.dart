import 'package:flutter/material.dart';
import 'package:habitr/models/Category.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/screens/habit_details/habit_details_screen.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class HabitListTile extends StatelessWidget {
  final String habitId;

  const HabitListTile(this.habitId, {Key? key}) : super(key: key);

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
    return FutureBuilder<Habit?>(
      future: repo.getHabit(habitId),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == null) {
          return const SizedBox.shrink();
        }
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
            return _HabitListTileView(
              habit: habit,
              isLoading: isLoading,
              isProcessing: isProcessing,
              isUpvoted: isUpvoted,
              onClickUpvote: () => _vote(repo, habitId, true),
              onClickDownvote: () => _vote(repo, habitId, false),
            );
          },
        );
      },
    );
  }
}

class _HabitListTileView extends StatelessWidget {
  static final loadingColor = Colors.grey[300]!;

  final Habit? habit;
  final bool isLoading;
  final bool isProcessing;
  final bool? isUpvoted;
  final void Function()? onClickUpvote;
  final void Function()? onClickDownvote;

  const _HabitListTileView({
    required this.habit,
    required this.isLoading,
    required this.isProcessing,
    required this.isUpvoted,
    required this.onClickUpvote,
    required this.onClickDownvote,
    Key? key,
  }) : super(key: key);

  Widget? get _subtitle {
    if (isLoading) {
      return null;
    }
    var owner = habit!.owner;
    var category = habit!.category;
    return Row(
      children: [
        Text(category.string),
        Text(' \u2022 @' + owner),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: isLoading
          ? null
          : () {
              Navigator.of(context).push<void>(MaterialPageRoute(
                builder: (_) => HabitDetailsScreen(habit!.id),
              ));
            },
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
              onPressed: isLoading || isProcessing ? null : onClickUpvote,
            ),
          ),
          Text(
            isLoading ? '' : '${(habit!.ups ?? 0) - (habit!.downs ?? 0)}',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isLoading || isProcessing ? loadingColor : null,
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
              onPressed: isLoading || isProcessing ? null : onClickDownvote,
            ),
          ),
        ],
      ),
      title: isLoading ? const Text('Loading...') : Text(habit!.tagline),
      trailing: const Icon(Icons.chevron_right),
      subtitle: _subtitle,
    );
  }
}
