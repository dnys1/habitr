import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/add_image_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: viewModel.pickImage,
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.shortestSide / 2,
                  foregroundImage: viewModel.image != null
                      ? FileImage(viewModel.image!)
                      : null,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: viewModel.setName,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: viewModel.save,
                child:
                    viewModel.isDirty ? const Text('Save') : const Text('Skip'),
              ),
            ],
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
    );
  }
}
