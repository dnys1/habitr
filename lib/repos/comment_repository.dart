import 'package:habitr/models/Comment.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/api_service.dart';

abstract class CommentRepository extends Repository<Comment?> {
  Future<Comment?> getComment(String id);
  Future<void> addComment(Comment comment);
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
  Future<void> addComment(Comment comment) async {}
}
