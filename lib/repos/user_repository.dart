import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/repository.dart';
import 'package:habitr/services/api_service.dart';

abstract class UserRepository extends Repository<User?> {
  Future<User?> getUser(String username);
  Future<List<User>> searchUsers(String query);
}

class UserRepositoryImpl extends UserRepository {
  final ApiService _apiService;
  final AuthBloc _authBloc;

  UserRepositoryImpl({
    required ApiService apiService,
    required AuthBloc authBloc,
  })  : _apiService = apiService,
        _authBloc = authBloc;

  @override
  Future<User?> getUser(String username) async {
    if (has(username)) {
      return get(username);
    }
    if (_authBloc.state is AuthLoggedIn) {
      var currentUser = (_authBloc.state as AuthLoggedIn).user;
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
    var currentUsername = (_authBloc.state as AuthLoggedIn).user.username;
    final searchResults = await _apiService.searchUsers(
      query,
      currentUsername,
      limit: 5,
    );
    final users = await Future.wait(
      searchResults.map((user) => getUser(user.username)),
    );
    return users.whereType<User>().toList();
  }
}