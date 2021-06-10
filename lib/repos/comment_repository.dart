import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/api_service.dart';

abstract class CommentRepository extends Repository<Comment?> {
  Future<Comment?> getComment(String id);
  Future<Comment> addComment(String comment, String habitId);
}

class CommentRepositoryImpl extends CommentRepository {
  CommentRepositoryImpl({
    required ApiService apiService,
    required AuthBloc authBloc,
  })  : _apiService = apiService,
        _authBloc = authBloc {
    _init();
  }

  final ApiService _apiService;
  final AuthBloc _authBloc;

  Future<void> _init() async {
    await _authBloc.isInitialized;

    var state = _authBloc.state;
    if (state is AuthLoggedIn) {
      _updateUser(state.user);
    }
    addSubscription(_authBloc.stream.listen((state) {
      if (state is AuthLoggedIn) {
        _updateUser(state.user);
      }
    }));
  }

  void _updateUser(User user) {
    for (var comment in user.comments) {
      put(comment.id, comment);
    }
  }

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
