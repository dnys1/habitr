import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/user_info/user_info_screen.dart';
import 'package:habitr/widgets/home_drawer/home_drawer_viewmodel.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';

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
            leading: const Icon(Icons.search),
            title: const Text('Search'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Browse'),
            onTap: () {},
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
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => UserInfoScreen(
                    user: viewModel.currentUser,
                  ),
                ),
              ),
              child: SizedBox.expand(
                child: UserAvatar(viewModel.currentUser),
              ),
            ),
          ),
          if (viewModel.currentUser.name != null) ...[
            const SizedBox(height: 10),
            Text(
              viewModel.currentUser.name!,
              style: Theme.of(context).textTheme.headline6,
            ),
          ]
        ],
      ),
    );
  }
}
