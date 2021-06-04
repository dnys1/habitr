import 'package:flutter/material.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void showErrorSnackbar(String message) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.red,
  );
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}

void showSuccessSnackbar(String message) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.green,
  );
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}
