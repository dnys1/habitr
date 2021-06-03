// import 'package:flutter/material.dart';
// import 'package:habitr/services/auth_service.dart';
// import 'package:provider/provider.dart';

// class LoginWithAmazonButton extends StatelessWidget {
//   const LoginWithAmazonButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final authService = Provider.of<AuthService>(context, listen: false);
//     return ElevatedButton(
//       onPressed: authService.loginWithAmazon,
//       child: Row(
//         children: [
//           const Text('Login with'),
//           const SizedBox(width: 5),
//           Image.asset('assets/images/amazon_logo.png'),
//         ],
//       ),
//     );
//   }
// }
