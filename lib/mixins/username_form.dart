import 'package:habitr/util/base_viewmodel.dart';

mixin UsernameFormMixin on BaseViewModel {
  String? _username;
  String? get username => _username?.trim();
  void setUsername(String username) {
    _username = username;
  }

  Future<void>? _usernameExistsFuture;
  Future<void>? get usernameExistsFuture => _usernameExistsFuture;
  void setUsernameExistsFuture(Future<void> usernameExistsFuture) {
    _usernameExistsFuture = usernameExistsFuture;
  }
}
