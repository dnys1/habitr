import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/ModelProvider.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/screens/habit_details/habit_details_viewmodel.dart';
import 'package:habitr/widgets/comment/comment_card.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class HabitDetailsScreen extends StatelessWidget {
  final String habitId;

  const HabitDetailsScreen(this.habitId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final habitRepository =
            Provider.of<HabitRepository>(context, listen: false);
        final commentRepository =
            Provider.of<CommentRepository>(context, listen: false);
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        return HabitDetailsViewModel(
          authBloc: authBloc,
          habitRepository: habitRepository,
          commentRepository: commentRepository,
          habitId: habitId,
        );
      },
      builder: (context, _) {
        return _HabitDetailScreenView(Provider.of(context));
      },
    );
  }
}

class _HabitDetailScreenView extends StatelessWidget {
  const _HabitDetailScreenView(
    this.viewModel, {
    Key? key,
  }) : super(key: key);

  final HabitDetailsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: viewModel.isBusy
              ? null
              : Text(
                  viewModel.habit.tagline,
                  overflow: TextOverflow.ellipsis,
                ),
          // TODO: Re-enable when DataStore is resolved
          // actions: [
          //   if (viewModel.userOwnsHabit)
          //     IconButton(
          //       icon: const Icon(Icons.delete),
          //       onPressed: () async {
          //         var deleted = await viewModel.deleteHabit();
          //         if (deleted) {
          //           Navigator.of(context).pop();
          //         }
          //       },
          //     ),
          // ],
        ),
        body: viewModel.isBusy
            ? const Center(child: CircularProgressIndicator())
            : Selector<HabitRepository, Tuple3<Habit, bool, bool?>>(
                selector: (_, repo) => Tuple3(
                  repo.get(viewModel.habit.id)!,
                  repo.isLoading(viewModel.habit.id),
                  repo.isUpvoted(viewModel.habit.id),
                ),
                builder: (context, habitStatus, _) {
                  var habit = habitStatus.item1;
                  var isProcessing = habitStatus.item2;
                  var isUpvoted = habitStatus.item3;

                  return _HabitDetailScreenBody(
                    viewModel: viewModel,
                    habit: habit,
                    isProcessing: isProcessing,
                    isUpvoted: isUpvoted,
                  );
                },
              ),
      ),
    );
  }
}

class _HabitDetailScreenBody extends StatelessWidget {
  final HabitDetailsViewModel viewModel;
  final Habit habit;
  final bool isProcessing;
  final bool? isUpvoted;

  const _HabitDetailScreenBody({
    required this.viewModel,
    required this.habit,
    required this.isProcessing,
    required this.isUpvoted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var category = habit.category;
    var author = habit.owner;
    var details = habit.details;
    var hasDetails = details != null && details.isNotEmpty;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox.expand(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                habit.tagline,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              _Detail(
                label: 'Category',
                value: category.string,
              ),
              const SizedBox(height: 5),
              _Detail(label: 'Author', value: '@$author'),
              const SizedBox(height: 20),
              Text(
                'Details',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(hasDetails ? details! : 'No details.'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Comments',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              _AddCommentTextField(
                controller: viewModel.commentController,
                onSend: viewModel.isDirty ? viewModel.sendComment : null,
              ),
              const SizedBox(height: 20),
              _CommentList(habit.id),
            ],
          ),
        ),
      ),
    );
  }
}

class _AddCommentTextField extends StatelessWidget {
  const _AddCommentTextField({
    required this.controller,
    required this.onSend,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final FutureOr<void> Function()? onSend;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: false,
      decoration: InputDecoration(
        helperText: 'Add a comment',
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: onSend,
        ),
      ),
    );
  }
}

class _Detail extends StatelessWidget {
  const _Detail({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$label: ',
        style: Theme.of(context).textTheme.bodyText1,
        children: [
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}

class _CommentList extends StatelessWidget {
  const _CommentList(this.habitId, {Key? key}) : super(key: key);

  final String habitId;

  @override
  Widget build(BuildContext context) {
    return Selector<CommentRepository, List<Comment>>(
      selector: (context, repo) {
        return repo.cache.values
            .whereType<Comment>()
            .where((comment) => comment.habitId == habitId)
            .toList();
      },
      builder: (context, comments, child) {
        if (comments.isNotEmpty) {
          return Column(
            children: [
              for (var comment in comments) CommentCard(comment: comment)
            ],
          );
        } else {
          return const Center(child: Text('No comments'));
        }
      },
    );
  }
}
