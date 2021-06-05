import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/signup/signup_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/util/validators.dart';
import 'package:habitr/widgets/logo/habitr_logo.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        final apiService = Provider.of<ApiService>(context, listen: false);
        return SignupViewModel(authBloc, apiService);
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

  Widget? get usernameSuffix {
    if (viewModel.username.isEmpty) {
      return null;
    }
    if (viewModel.usernameExistsLoading) {
      return const CupertinoActivityIndicator();
    }
    if (!viewModel.usernameExists) {
      return const Icon(Icons.check, color: Colors.green);
    }
    return const Icon(Icons.close, color: Colors.red);
  }

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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(flex: 3),
                    const HabitrLogo(),
                    const Spacer(),
                    TextFormField(
                      onChanged: viewModel.setUsername,
                      validator: viewModel.validateUsername,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: const Icon(Icons.person),
                        suffix: usernameSuffix != null
                            ? SizedBox(
                                width: 32,
                                height: 32,
                                child: usernameSuffix,
                              )
                            : null,
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
                      validator: (String? passwordRetype) =>
                          validatePasswordRetype(
                              viewModel.password, passwordRetype),
                      decoration: const InputDecoration(
                        labelText: 'Retype',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    viewModel.isBusy
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: viewModel.signUp,
                            child: const Text('Sign Up'),
                          ),
                    const Spacer(flex: 4),
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
        ),
      ),
    );
  }
}
