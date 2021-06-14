import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/verify_viewmodel.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/util/validators.dart';
import 'package:provider/provider.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        final authService = Provider.of<AuthService>(context, listen: false);
        return VerifyViewModel(
          authBloc: authBloc,
          authService: authService,
        );
      },
      builder: (context, _) {
        return _VerifyView(
          viewModel: Provider.of<VerifyViewModel>(context),
        );
      },
    );
  }
}

class _VerifyView extends StatelessWidget {
  final VerifyViewModel viewModel;

  const _VerifyView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Form(
                  key: viewModel.formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          onChanged: viewModel.setCode,
                          validator: validateCode,
                          decoration: const InputDecoration(
                            labelText: 'Code',
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                        const SizedBox(height: 20),
                        if (viewModel.isBusy)
                          const CircularProgressIndicator()
                        else
                          ElevatedButton(
                            onPressed: viewModel.verify,
                            child: const Text('Verify'),
                          ),
                        const SizedBox(height: 20),
                        Text(
                          'Please check your email for the 6-digit verification code.',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        const SizedBox(height: 5),
                        TextButton(
                          onPressed: viewModel.resendCode,
                          child: const Text('Resend verification code'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton(
                  onPressed: viewModel.logout,
                  child: const Text('Logout'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
