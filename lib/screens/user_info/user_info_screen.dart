import 'package:flutter/material.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/screens/user_info/user_info_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/widgets/habit/habit_list_tile.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';

class UserInfoScreen extends StatelessWidget {
  final String? username;
  final User? user;

  const UserInfoScreen({
    Key? key,
    this.username,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        final authService = Provider.of<AuthService>(context, listen: false);
        final storageService =
            Provider.of<StorageService>(context, listen: false);
        return UserInfoViewModel(
          apiService: apiService,
          authService: authService,
          storageService: storageService,
          username: username,
          user: user,
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
  static const defaultPadding = SizedBox(height: 20);

  final UserInfoViewModel viewModel;

  const _UserInfoView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: viewModel.isBusy || viewModel.hasError
            ? null
            : Align(
                alignment: Alignment.centerLeft,
                child: Text(viewModel.user.name ?? viewModel.user.username)),
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (viewModel.isBusy)
                  const Center(child: CircularProgressIndicator())
                else if (viewModel.hasError)
                  Text(
                    viewModel.error.toString(),
                    textAlign: TextAlign.center,
                  )
                else ...[
                  UserAvatar(
                    user: viewModel.user,
                    canEdit: viewModel.isEditing,
                    onImageSelected: viewModel.setImage,
                  ),
                  defaultPadding,
                  if (viewModel.user.name != null) ...[
                    Text(
                      viewModel.user.name!,
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                    defaultPadding,
                  ],
                  Text(
                    '@${viewModel.user.username}',
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  defaultPadding,
                  _UserHabitsAndComments(
                    habits: viewModel.user.habits ?? [],
                    comments: viewModel.user.comments ?? [],
                  ),
                  defaultPadding,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserHabitsAndComments extends StatefulWidget {
  const _UserHabitsAndComments({
    Key? key,
    required this.habits,
    required this.comments,
  }) : super(key: key);

  final List<Habit> habits;
  final List<Comment> comments;

  @override
  _UserHabitsAndCommentsState createState() => _UserHabitsAndCommentsState();
}

class _UserHabitsAndCommentsState extends State<_UserHabitsAndComments> {
  bool isHabitsExpanded = false;
  bool isCommentsExpanded = false;

  @override
  Widget build(BuildContext context) {
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
              title: Text('Habits (${widget.habits.length})'),
            );
          },
          body: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.habits.isNotEmpty)
                    for (var habit in widget.habits) HabitListTile(habit.id)
                  else
                    const Text('No habits'),
                  _UserInfoView.defaultPadding,
                ],
              ),
            ),
          ),
          isExpanded: isHabitsExpanded,
        ),
        ExpansionPanel(
          headerBuilder: (context, bool isExpanded) {
            return ListTile(
              title: Text('Comments (${widget.comments.length})'),
            );
          },
          body: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.comments.isNotEmpty)
                    Container()
                  else
                    const Text('No comments'),
                  _UserInfoView.defaultPadding,
                  // for (var comment in widget.comments)
                  //   CommentListTile(comment: comment)
                ],
              ),
            ),
          ),
          isExpanded: isCommentsExpanded,
        ),
      ],
    );
  }
}
