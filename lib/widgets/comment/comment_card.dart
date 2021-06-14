import 'package:flutter/material.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/screens/user_info/user_info_screen.dart';
import 'package:habitr/util/date.dart';
import 'package:habitr/widgets/comment/comment_card_view_model.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
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
        return CommentCardViewModel(
          commentRepository: commentRepository,
          commentId: commentId ?? comment!.id,
        );
      },
      builder: (context, _) {
        return _CommentCardView(Provider.of(context));
      },
    );
  }
}

class _CommentCardView extends StatelessWidget {
  const _CommentCardView(this.viewModel, {Key? key}) : super(key: key);

  final CommentCardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    if (viewModel.isBusy) {
      return const SizedBox.shrink();
    }
    var comment = viewModel.comment;
    var author = comment.by;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).push<void>(MaterialPageRoute(
                  builder: (_) => UserInfoScreen(username: comment.owner),
                ));
              },
              leading: UserAvatar(
                username: comment.owner,
                isThumbnail: true,
              ),
              title: Text(author?.name ?? '@${comment.owner}'),
              subtitle: Text(prettyDate(comment.createdAt)),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(comment.comment),
            ),
          ],
        ),
      ),
    );
  }
}
