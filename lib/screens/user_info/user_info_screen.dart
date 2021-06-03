import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/screens/user_info/user_info_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:provider/provider.dart';

class UserInfoScreen extends StatelessWidget {
  final String? username;
  final User? user;

  const UserInfoScreen({
    Key? key,
    this.username,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        return UserInfoViewModel(
          apiService: apiService,
          username: username,
          user: user,
        );
      },
      builder: (context, _) {
        return _UserInfoView(
          viewModel: Provider.of<UserInfoViewModel>(context),
        );
      },
    );
  }
}

class _UserInfoView extends StatelessWidget {
  final UserInfoViewModel viewModel;

  const _UserInfoView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: viewModel.isBusy || viewModel.hasError
            ? null
            : Text(viewModel.user!.name ?? viewModel.user!.username),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (viewModel.hasError)
            Center(
              child: Text(viewModel.error.toString()),
            )
          else ...[
            Center(
              child: Text(viewModel.user!.username),
            ),
          ],
        ],
      ),
    );
  }
}
