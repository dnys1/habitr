import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/login/login_viewmodel.dart';
import 'package:habitr/util/validators.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        return LoginViewModel(authBloc);
      },
      builder: (context, _) {
        return _LoginView(
          viewModel: Provider.of<LoginViewModel>(context),
        );
      },
    );
  }
}

class _LoginView extends StatelessWidget {
  final LoginViewModel viewModel;

  const _LoginView({Key? key, required this.viewModel}) : super(key: key);

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
                    onChanged: viewModel.setUsername,
                    validator: validateUsername,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: viewModel.setPassword,
                    validator: validatePassword,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  AnimatedBuilder(
                    animation: viewModel,
                    builder: (context, child) {
                      if (viewModel.isBusy) {
                        return const CircularProgressIndicator();
                      }
                      return TextButton(
                        onPressed: viewModel.login,
                        child: const Text('Login'),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    child: const Text('Sign Up'),
                    onPressed: viewModel.goToSignUp,
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
