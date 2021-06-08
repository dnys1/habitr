import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/add_image_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:provider/provider.dart';

class AddImageScreen extends StatelessWidget {
  const AddImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        final storageService =
            Provider.of<StorageService>(context, listen: false);
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        final authService = Provider.of<AuthService>(context, listen: false);
        return AddImageViewModel(
          authBloc: authBloc,
          authService: authService,
          apiService: apiService,
          storageService: storageService,
        );
      },
      builder: (context, _) {
        final viewModel = Provider.of<AddImageViewModel>(context);
        return _AddImageView(viewModel: viewModel);
      },
    );
  }
}

class _AddImageView extends StatelessWidget {
  final AddImageViewModel viewModel;

  const _AddImageView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.shortestSide / 2,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Add a name and picture',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 20),
                      UserAvatar(onImageSelected: viewModel.setImage),
                      const SizedBox(height: 20),
                      TextField(
                        onChanged: viewModel.setName,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: viewModel.save,
                        child: viewModel.isDirty
                            ? const Text('Save')
                            : const Text('Skip'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (viewModel.isBusy)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200]!.withOpacity(0.8),
                ),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
