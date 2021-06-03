import 'package:habitr/models/User.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/util/base_viewmodel.dart';

class UserInfoViewModel extends BaseViewModel {
  final ApiService _apiService;

  User? _user;
  User? get user => _user;
  void _setUser(User user) {
    _user = user;
    notifyListeners();
  }

  UserInfoViewModel({
    required ApiService apiService,
    String? username,
    User? user,
  }) : _apiService = apiService {
    assert(
      username != null || user != null,
      'Either username or user must be provided.',
    );
    if (user != null) {
      _user = user;
    } else {
      _loadUser(username!);
    }
  }

  Future<void> _loadUser(String username) async {
    setBusy(true);
    try {
      final user = await _apiService.getUser(username);
      if (user != null) {
        _setUser(user);
      } else {
        setError('Could not load user');
      }
    } on Exception catch (e) {
      setError(e);
    } finally {
      setBusy(false);
    }
  }
}
