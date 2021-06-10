import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/screens/app/app_navigator_state.dart';
import 'package:habitr/screens/feed/feed_screen.dart';
import 'package:habitr/screens/settings/settings_screen.dart';
import 'package:habitr/screens/user_info/user_info_screen.dart';
import 'package:habitr/services/search_service.dart';
import 'package:habitr/widgets/home_drawer/home_drawer_viewmodel.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context);
        return HomeDrawerViewModel(
          authBloc: authBloc,
        );
      },
      builder: (context, child) {
        final viewModel = Provider.of<HomeDrawerViewModel>(context);
        return _HomeDrawerView(viewModel: viewModel);
      },
    );
  }
}

class _HomeDrawerView extends StatelessWidget {
  final HomeDrawerViewModel viewModel;

  const _HomeDrawerView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _HomeDrawerHeader(viewModel: viewModel),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
              Provider.of<AppNavigatorState>(context, listen: false)
                  .setBaseRoute(FeedScreen.page);
            },
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
            onTap: () {
              showSearch(
                context: context,
                delegate: SearchService(
                  habitRepository:
                      Provider.of<HabitRepository>(context, listen: false),
                  userRepository:
                      Provider.of<UserRepository>(context, listen: false),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Browse'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).pushNamed(SettingsScreen.route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: viewModel.isBusy ? null : viewModel.logout,
          ),
        ],
      ),
    );
  }
}

class _HomeDrawerHeader extends StatelessWidget {
  const _HomeDrawerHeader({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final HomeDrawerViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SizedBox.expand(
              child: UserAvatar(
                user: viewModel.currentUser,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => UserInfoScreen(
                      user: viewModel.currentUser,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Selector<UserRepository, Tuple2<String, String?>>(
            selector: (context, repo) {
              var user = repo.get(viewModel.currentUser.username)!;
              return Tuple2(user.displayUsername ?? user.username, user.name);
            },
            builder: (context, names, child) {
              var username = names.item1;
              var name = names.item2;
              return Text(
                name ?? '@$username',
                style: Theme.of(context).textTheme.headline6,
              );
            },
          ),
        ],
      ),
    );
  }
}
