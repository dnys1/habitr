import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/verify_viewmodel.dart';
import 'package:habitr/util/validators.dart';
import 'package:provider/provider.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        return VerifyViewModel(authBloc);
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
    return Scaffold(
      body: Center(
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
                  AnimatedBuilder(
                    animation: viewModel,
                    builder: (context, child) {
                      if (viewModel.isBusy) {
                        return const CircularProgressIndicator();
                      }
                      return TextButton(
                        onPressed: viewModel.verify,
                        child: const Text('Verify'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
