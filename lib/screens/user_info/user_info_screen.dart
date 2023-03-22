import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/screens/user_info/user_info_viewmodel.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/list.dart';
import 'package:habitr/widgets/comment/comment_list_tile.dart';
import 'package:habitr/widgets/habit/habit_list_tile.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:habitr/widgets/user/username.dart';
import 'package:habitr/widgets/username_form_field/username_form_field.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

const _defaultPadding = SizedBox(height: 20);

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({
    super.key,
    this.username,
    this.user,
  }) : assert(
          username != null || user != null,
          'Either username or user must be provided.',
        );

  final String? username;
  final User? user;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        final userRepository =
            Provider.of<UserRepository>(context, listen: false);
        final storageService =
            Provider.of<StorageService>(context, listen: false);
        return UserInfoViewModel(
          authBloc: authBloc,
          userRepository: userRepository,
          storageService: storageService,
          username: username ?? user!.username,
        );
      },
      builder: (context, _) {
        return _UserInfoView(
          viewModel: Provider.of<UserInfoViewModel>(context),
        );
      },
    );
  }
}

class _UserInfoView extends StatelessWidget {
  const _UserInfoView({
    required this.viewModel,
  });

  final UserInfoViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: viewModel.isBusy || viewModel.hasError
            ? null
            : Selector<UserRepository, User>(
                selector: (context, repo) => repo.get(viewModel.user.username)!,
                builder: (context, user, child) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      user.name ?? '@${user.displayUsername ?? user.username}',
                    ),
                  );
                },
              ),
        actions: [
          if (viewModel.canEditProfile)
            if (viewModel.isEditing) ...[
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: viewModel.close,
              ),
              IconButton(
                icon: const Icon(Icons.check),
                onPressed: viewModel.save,
              )
            ] else
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: viewModel.toggleEditMode,
              ),
        ],
      ),
      body: _UserInfoBody(viewModel),
    );
  }
}

class _UserInfoBody extends StatelessWidget {
  const _UserInfoBody(this.viewModel);

  final UserInfoViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    if (viewModel.isBusy) {
      return const Center(child: CircularProgressIndicator());
    }
    if (viewModel.hasError) {
      return Text(
        viewModel.error.toString(),
        textAlign: TextAlign.center,
      );
    }

    final user = viewModel.user;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: viewModel.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserAvatar(
                user: user,
                canEdit: viewModel.isEditing,
                selectImage: viewModel.pickImage,
                imageBytes: viewModel.imageBytes,
                imageUrl: viewModel.image?.path,
                isEditing: viewModel.isEditing,
              ),
              _defaultPadding,
              if (viewModel.isEditing)
                TextFormField(
                  controller: viewModel.nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.badge),
                  ),
                )
              else
                Selector<UserRepository, String?>(
                  selector: (context, repo) =>
                      repo.get(viewModel.user.username)!.name,
                  builder: (context, name, child) {
                    if (name == null) {
                      return const SizedBox.shrink();
                    }
                    return Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              _defaultPadding,
              if (viewModel.isEditing)
                UsernameFormField(
                  controller: viewModel.usernameController,
                  onUpdateRequestFuture: viewModel.setUsernameExistsFuture,
                )
              else
                UsernameText(user),
              _defaultPadding,
              _UserHabitsAndComments(user.username),
              _defaultPadding,
            ],
          ),
        ),
      ),
    );
  }
}

class _UserHabitsAndComments extends StatefulWidget {
  const _UserHabitsAndComments(this.username);

  final String username;

  @override
  _UserHabitsAndCommentsState createState() => _UserHabitsAndCommentsState();
}

class _UserHabitsAndCommentsState extends State<_UserHabitsAndComments> {
  bool isHabitsExpanded = true;
  bool isCommentsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Selector2<HabitRepository, CommentRepository,
        Tuple2<List<Habit>, List<Comment>>>(
      selector: (context, habitsRepo, commentsRepo) {
        final habits = habitsRepo.cache.values
            .whereType<Habit>()
            .where((habit) => habit.owner == widget.username)
            .toList();
        final comments = commentsRepo.cache.values
            .whereType<Comment>()
            .where((comment) => comment.owner == widget.username)
            .toList();

        return Tuple2(habits, comments);
      },
      builder: (context, habitsAndComments, child) {
        final habits = habitsAndComments.item1;
        final comments = habitsAndComments.item2;
        return ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              if (index == 0) isHabitsExpanded = !isExpanded;
              if (index == 1) isCommentsExpanded = !isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (context, bool isExpanded) {
                return ListTile(
                  title: Text('Habits (${habits.length})'),
                );
              },
              body: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (habits.isNotEmpty)
                        for (var habit in habits) HabitListTile(habit.id)
                      else
                        const Text('No habits'),
                      _defaultPadding,
                    ],
                  ),
                ),
              ),
              isExpanded: isHabitsExpanded,
            ),
            ExpansionPanel(
              headerBuilder: (context, bool isExpanded) {
                return ListTile(
                  title: Text('Comments (${comments.length})'),
                );
              },
              body: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (comments.isNotEmpty)
                        ...<Widget>[
                          for (var comment in comments)
                            CommentListTile(comment.id)
                        ].spacedBy(const Divider())
                      else
                        const Text('No comments'),
                      _defaultPadding,
                    ],
                  ),
                ),
              ),
              isExpanded: isCommentsExpanded,
            ),
          ],
        );
      },
    );
  }
}
