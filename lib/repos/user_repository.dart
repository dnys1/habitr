import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/Comment.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/S3Object.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/storage_service.dart';

abstract class UserRepository extends Repository<User?> {
  Future<User?> getUser(String username);
  Future<void> updateUser({
    String? name,
    String? username,
    S3Object? avatar,
  });
  Future<List<User>> searchUsers(String query);
}

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({
    required ApiService apiService,
    required AuthBloc authBloc,
    required HabitRepository habitRepository,
    required CommentRepository commentRepository,
    required StorageService storageService,
  })  : _apiService = apiService,
        _authBloc = authBloc,
        _habitRepository = habitRepository,
        _commentRepository = commentRepository,
        _storageService = storageService {
    _init();
  }

  final ApiService _apiService;
  final AuthBloc _authBloc;
  final HabitRepository _habitRepository;
  final CommentRepository _commentRepository;
  final StorageService _storageService;

  Future<void> _init() async {
    await _authBloc.isInitialized;

    final state = _authBloc.state;
    if (state is AuthLoggedIn) {
      _updateUser(state.user);
    }
    addSubscription(
      _authBloc.stream.listen((state) {
        if (state is AuthLoggedIn) {
          _updateUser(state.user);
        }
      }),
    );
  }

  void _updateUser(User user) {
    put(user.username, user);
  }

  @override
  User? put(String id, User? value) {
    _habitRepository.putAll({
      for (var habit in value?.habits ?? <Habit>[]) habit.id: habit,
    });
    _commentRepository.putAll({
      for (var comment in value?.comments ?? <Comment>[]) comment.id: comment,
    });
    final avatar = value?.avatar;
    if (avatar != null) {
      _storageService.getImageUrl(avatar.cognitoId, avatar.key);
    }
    return super.put(id, value);
  }

  @override
  Future<User?> getUser(String username) async {
    if (has(username)) {
      return get(username);
    }
    if (_authBloc.state is AuthLoggedIn) {
      final currentUser = (_authBloc.state as AuthLoggedIn).user;
      if (username == currentUser.username) {
        return put(username, currentUser);
      }
    }
    final user = await _apiService.getUser(username);
    return put(username, user);
  }

  @override
  Future<List<User>> searchUsers(String query) async {
    if (query.isEmpty) return [];
    final currentUsername = (_authBloc.state as AuthLoggedIn).user.username;
    final searchResults = await _apiService.searchUsers(
      query,
      currentUsername,
      limit: 5,
    );
    final userObjs = await Future.wait(
      searchResults.map((user) => getUser(user.username)),
    );
    final users = userObjs.whereType<User>().toList();
    for (final user in users) {
      put(user.username, user);
    }
    return users;
  }

  @override
  Future<void> updateUser({
    String? name,
    String? username,
    S3Object? avatar,
  }) async {
    if (name == null && username == null && avatar == null) return;
    final updatedUser = await _apiService.updateUser(
      (_authBloc.state as AuthLoggedIn).user,
      name: name,
      username: username,
      avatar: avatar,
    );
    if (updatedUser != null) {
      put(updatedUser.username, updatedUser);
    }
  }
}
