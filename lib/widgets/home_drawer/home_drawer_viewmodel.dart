import 'dart:async';

import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/util/base_viewmodel.dart';

class HomeDrawerViewModel extends BaseViewModel {
  final AuthBloc _authBloc;

  late final StreamSubscription<AuthState> _authBlocSubscription;

  HomeDrawerViewModel({
    required AuthBloc authBloc,
  }) : _authBloc = authBloc {
    _authBlocSubscription = _authBloc.stream.listen((event) {
      if (event is AuthLoggedIn && hasListeners) {
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    _authBlocSubscription.cancel();
    super.dispose();
  }

  User get currentUser {
    final authState = _authBloc.state as AuthLoggedIn;
    return authState.user;
  }

  Future<void> logout() async {
    setBusy(true);
    _authBloc.add(const AuthLogout());
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }
}
