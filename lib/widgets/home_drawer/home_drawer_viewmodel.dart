import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/base_viewmodel.dart';

class HomeDrawerViewModel extends BaseViewModel {
  final AuthBloc _authBloc;
  final StorageService _storageService;

  HomeDrawerViewModel({
    required AuthBloc authBloc,
    required StorageService storageService,
  })  : _authBloc = authBloc,
        _storageService = storageService {
    _authBloc.stream.listen((event) {
      if (event is AuthLoggedIn && hasListeners) {
        notifyListeners();
      }
    });
  }

  User get currentUser {
    final authState = _authBloc.state as AuthLoggedIn;
    return authState.user;
  }

  Future<String?> get userAvatarUrl async {
    if (currentUser.avatar == null) {
      return null;
    }
    return _storageService.getImageUrl(currentUser.avatar!.key);
  }

  void logout() {
    _authBloc.add(const AuthLogout());
  }
}
