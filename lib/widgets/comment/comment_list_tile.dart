import 'package:flutter/material.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/widgets/comment/comment_list_tile_viewmodel.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';

class CommentListTile extends StatelessWidget {
  const CommentListTile({
    Key? key,
    this.comment,
    this.commentId,
  })  : assert(
          commentId != null || comment != null,
          'Either comment or commentId must be provided.',
        ),
        super(key: key);

  final String? commentId;
  final Comment? comment;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final commentRepository =
            Provider.of<CommentRepository>(context, listen: false);
        return CommentListTileViewModel(
          commentRepository: commentRepository,
        );
      },
      builder: (context, _) {
        return _CommentListTileView(Provider.of(context));
      },
    );
  }
}

class _CommentListTileView extends StatelessWidget {
  const _CommentListTileView(this.viewModel, {Key? key}) : super(key: key);

  final CommentListTileViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    var author = viewModel.comment.by!;
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: UserAvatar(username: author.username),
            title: Text(author.name ?? '@${author.username}'),
          ),
        ],
      ),
    );
  }
}
