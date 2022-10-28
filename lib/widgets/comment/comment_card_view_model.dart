import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/util/base_viewmodel.dart';

class CommentCardViewModel extends BaseViewModel {
  CommentCardViewModel({
    required CommentRepository commentRepository,
    required this.commentId,
  }) : _commentRepository = commentRepository {
    _init();
  }

  final String commentId;
  final CommentRepository _commentRepository;

  Future<void> _init() async {
    setBusy(true);
    try {
      final comment = await _commentRepository.getComment(commentId);
      if (comment == null) {
        throw Exception('Comment not found');
      }
      _comment = comment;
    } on Exception catch (e) {
      safePrint('Error initializing $runtimeType: $e');
      setError(e);
    } finally {
      setBusy(false);
    }
  }

  late Comment _comment;
  Comment get comment => _comment;
}
