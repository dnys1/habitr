import 'package:habitr/models/Comment.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/api_service.dart';

abstract class CommentRepository extends Repository<Comment?> {
  Future<Comment?> getComment(String id);
  Future<Comment> addComment(String comment, String habitId);
}

class CommentRepositoryImpl extends CommentRepository {
  CommentRepositoryImpl({
    required ApiService apiService,
  }) : _apiService = apiService;

  final ApiService _apiService;

  @override
  Future<Comment?> getComment(String id) async {
    if (has(id)) return get(id)!;
    final comment = await _apiService.getComment(id);
    return put(id, comment);
  }

  @override
  Future<Comment> addComment(String comment, String habitId) async {
    final createdComment = await _apiService.createComment(comment, habitId);
    put(createdComment.id, createdComment);
    return createdComment;
  }
}
