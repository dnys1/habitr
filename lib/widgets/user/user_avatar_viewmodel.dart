import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/util/base_viewmodel.dart';

class UserAvatarViewModel extends BaseViewModel {
  UserAvatarViewModel({
    required UserRepository userRepository,
    required AuthService authService,
    required String username,
  })  : _userRepository = userRepository,
        _authService = authService,
        _username = username {
    _init();
  }

  final AuthService _authService;
  final UserRepository _userRepository;

  late final User user;

  final String _username;

  bool _canEditPhoto = false;
  bool get canEditPhoto => _canEditPhoto;

  Future<void> _init() async {
    setBusy(true);
    try {
      final user = await _userRepository.getUser(_username);
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
