import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:provider/provider.dart';

class UsernameText extends StatelessWidget {
  const UsernameText(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Selector<UserRepository, String?>(
      selector: (context, repo) {
        final repoUser = repo.get(user.username)!;
        return repoUser.displayUsername;
      },
      builder: (context, displayUsername, child) {
        return Text(
          '@${displayUsername ?? user.username}',
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
