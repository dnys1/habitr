import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/add_image_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/widgets/user/user_avatar.dart';
import 'package:habitr/widgets/username_form_field/username_form_field.dart';
import 'package:provider/provider.dart';

class AddImageScreen extends StatelessWidget {
  const AddImageScreen({Key? key}) : super(key: key);

  static const page = MaterialPage<void>(child: AddImageScreen());

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
        return _AddImageView(Provider.of(context));
      },
    );
  }
}

class _AddImageView extends StatelessWidget {
  final AddImageViewModel viewModel;

  const _AddImageView(
    this.viewModel, {
    Key? key,
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.shortestSide / 2,
                  ),
                  child: Form(
                    key: viewModel.formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20 + MediaQuery.of(context).viewPadding.top,
                          ),
                          Text(
                            'Add a name and picture',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(height: 20),
                          UserAvatar(
                            user: viewModel.user,
                            selectImage: viewModel.pickImage,
                            image: viewModel.image,
                          ),
                          const SizedBox(height: 20),
                          UsernameFormField(
                            onChanged: viewModel.setUsername,
                            onUpdateRequestFuture:
                                viewModel.setUsernameExistsFuture,
                            validator: (_) => null,
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            onChanged: viewModel.setName,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              prefixIcon: Icon(Icons.badge),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: viewModel.save,
                            child: viewModel.isDirty
                                ? const Text('Save')
                                : const Text('Skip'),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
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
