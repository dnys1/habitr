import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/screens/user_info/user_info_screen.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class UserListTile extends StatelessWidget {
  final String username;

  const UserListTile(this.username, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repo = Provider.of<UserRepository>(context, listen: false);
    return FutureBuilder<User?>(
      future: repo.getUser(username),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == null) {
          return const SizedBox.shrink();
        }
        return Selector<UserRepository, Tuple2<User?, bool>>(
          selector: (_, repo) => Tuple2(
            repo.cache[username],
            repo.isLoading(username),
          ),
          builder: (context, userStatus, _) {
            var user = userStatus.item1;
            var isLoading = user == null;
            return _UserListTileView(
              user: user,
              isLoading: isLoading,
            );
          },
        );
      },
    );
  }
}

class _UserListTileView extends StatelessWidget {
  final User? user;
  final bool isLoading;

  const _UserListTileView({
    required this.user,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  Widget? get title {
    if (user == null) {
      return null;
    }
    if (user!.name != null) {
      return Text(user!.name!);
    }
    return Text('@' + (user!.displayUsername ?? user!.username));
  }

  Widget? get subtitle {
    if (user == null) {
      return null;
    }
    if (user!.name == null) {
      return null;
    }
    return Text('@' + (user!.displayUsername ?? user!.username));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: user == null
          ? null
          : () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => UserInfoScreen(user: user!),
                ),
              );
            },
      leading: user == null
          ? const CircularProgressIndicator()
          : UserAvatar(user: user!, isThumbnail: true),
      title: isLoading ? const Text('Loading...') : title,
      trailing: const Icon(Icons.chevron_right),
      subtitle: subtitle,
    );
  }
}
