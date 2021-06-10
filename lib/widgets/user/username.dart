import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';

class UsernameText extends StatelessWidget {
  const UsernameText(this.user, {Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Text(
      '@${user.displayUsername ?? user.username}',
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
    );
  }
}
