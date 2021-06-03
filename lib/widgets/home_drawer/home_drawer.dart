import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/user_info/user_info_screen.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/widgets/home_drawer/home_drawer_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context);
        final storageService =
            Provider.of<StorageService>(context, listen: false);
        return HomeDrawerViewModel(
          authBloc: authBloc,
          storageService: storageService,
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
          DrawerHeader(
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
                      child: FutureBuilder<String?>(
                        future: viewModel.userAvatarUrl,
                        builder: (context, snapshot) {
                          final url = snapshot.hasData ? snapshot.data : null;
                          return CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child: url != null
                                ? CachedNetworkImage(
                                    imageUrl: url,
                                    imageBuilder: (context, imageProvider) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      );
                                    },
                                    placeholder: (context, url) =>
                                        const CupertinoActivityIndicator(),
                                  )
                                : null,
                          );
                        },
                      ),
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
          ),
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
            onTap: viewModel.logout,
          ),
        ],
      ),
    );
  }
}
