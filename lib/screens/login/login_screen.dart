import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/login/login_viewmodel.dart';
import 'package:habitr/util/validators.dart';
import 'package:habitr/widgets/logo/habitr_logo.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
  const _LoginView({required this.viewModel});

  final LoginViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Spacer(flex: 3),
                    const HabitrLogo(),
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
                    SizedBox(
                      height: 40,
                      child: viewModel.isBusy
                          ? const Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: CircularProgressIndicator(),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: ElevatedButton(
                                onPressed: viewModel.login,
                                child: const Text('Login'),
                              ),
                            ),
                    ),
                    const SizedBox(height: 5),
                    const Spacer(flex: 4),
                    TextButton(
                      onPressed: viewModel.goToSignUp,
                      child: const Text('Sign Up'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
