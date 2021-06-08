import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';

class LoginWithAmazonButton extends StatelessWidget {
  const LoginWithAmazonButton({Key? key}) : super(key: key);

  void _login(AuthBloc authBloc) {
    authBloc.add(
      const AuthLogin(AuthLoginWithProviderData(AuthProvider.amazon)),
    );
  }

  static const _imageSize = Size(2100, 633);

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
    return ElevatedButton(
      onPressed: () => _login(authBloc),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 200,
          maxHeight: 200.0 / _imageSize.aspectRatio,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Login with'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  var height = constraints.maxHeight / 2;
                  return Image.asset(
                    'assets/images/amazon_logo.png',
                    width: height * _imageSize.aspectRatio,
                    height: height,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
