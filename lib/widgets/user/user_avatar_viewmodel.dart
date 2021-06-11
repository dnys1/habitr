import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';

class UserAvatarViewModel extends BaseViewModel {
  final AuthService _authService;
  final UserRepository _userRepository;

  late final User user;

  UserAvatarViewModel({
    required UserRepository userRepository,
    required AuthService authService,
    required String username,
  })  : _userRepository = userRepository,
        _authService = authService,
        _username = username {
    _init();
  }

  final String _username;

  bool _canEditPhoto = false;
  bool get canEditPhoto => _canEditPhoto;

  Future<void> _init() async {
    setBusy(true);
    try {
      var user = await _userRepository.getUser(_username);
      if (user == null) {
        throw Exception('User not found');
      }
      this.user = user;
      if (user.username == await _authService.username) {
        _canEditPhoto = true;
      }
    } on Exception catch (e) {
      safePrint('Error initializing view model: $e');
    } finally {
      setBusy(false);
    }
  }
}
