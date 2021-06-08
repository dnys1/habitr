import 'package:habitr/models/Comment.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';

class CommentListTileViewModel extends BaseViewModel {
  CommentListTileViewModel({
    required CommentRepository commentRepository,
    Comment? comment,
    String? commentId,
  }) : _commentRepository = commentRepository {
    _init(comment: comment, commentId: commentId);
  }

  final CommentRepository _commentRepository;

  Future<void> _init({
    Comment? comment,
    String? commentId,
  }) async {
    setBusy(true);
    try {
      comment ??= await _commentRepository.getComment(commentId!);
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
