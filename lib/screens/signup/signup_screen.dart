import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/signup_viewmodel.dart';
import 'package:habitr/util/validators.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        return SignupViewModel(authBloc);
      },
      builder: (context, _) {
        return _SignupView(
          viewModel: Provider.of<SignupViewModel>(context),
        );
      },
    );
  }
}

class _SignupView extends StatelessWidget {
  final SignupViewModel viewModel;

  const _SignupView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: viewModel.formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
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
                  onChanged: viewModel.setEmail,
                  validator: validateEmail,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
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
                TextFormField(
                  onChanged: viewModel.setPassword,
                  validator: (String? passwordRetype) => validatePasswordRetype(
                      viewModel.password, passwordRetype),
                  decoration: const InputDecoration(
                    labelText: 'Retype',
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
                    return ElevatedButton(
                      onPressed: viewModel.signUp,
                      child: const Text('Sign Up'),
                    );
                  },
                ),
                const Spacer(),
                TextButton(
                  child: const Text('Login'),
                  onPressed: viewModel.goToLogin,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
