import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';

class HabitListTile extends StatelessWidget {
  final Habit habit;
  final bool? isUpvoted;
  final bool isLoading;
  final void Function() onClickUpvote;
  final void Function() onClickDownvote;

  const HabitListTile({
    Key? key,
    required this.habit,
    required this.isUpvoted,
    required this.isLoading,
    required this.onClickUpvote,
    required this.onClickDownvote,
  }) : super(key: key);

  static final loadingColor = Colors.grey[300]!;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        children: [
          Expanded(
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.expand_less,
                color: isLoading
                    ? loadingColor
                    : isUpvoted == true
                        ? Colors.amber
                        : null,
              ),
              onPressed: isLoading ? null : onClickUpvote,
            ),
          ),
          Text(
            '${(habit.ups ?? 0) - (habit.downs ?? 0)}',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isLoading ? loadingColor : null,
                ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.expand_more,
                color: isLoading
                    ? loadingColor
                    : isUpvoted == false
                        ? Colors.amber
                        : null,
              ),
              onPressed: isLoading ? null : onClickDownvote,
            ),
          ),
        ],
      ),
      title: Text(habit.tagline),
      subtitle: habit.author != null ? Text(habit.author!.username) : null,
    );
  }
}
