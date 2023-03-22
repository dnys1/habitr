import 'package:flutter/material.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

bool get _mounted {
  return scaffoldMessengerKey.currentContext != null &&
      scaffoldMessengerKey.currentState != null;
}

ThemeData get _theme {
  return Theme.of(scaffoldMessengerKey.currentContext!);
}

TextStyle get _textStyle {
  return _theme.textTheme.bodyMedium!.copyWith(
    color: Colors.white,
  );
}

void showErrorSnackbar(String message) {
  if (!_mounted) return;
  final snackBar = SnackBar(
    content: Text(message, style: _textStyle),
    backgroundColor: Colors.red,
  );
  scaffoldMessengerKey.currentState!.showSnackBar(snackBar);
}

void showSuccessSnackbar(String message) {
  if (!_mounted) return;
  final snackBar = SnackBar(
    content: Text(message, style: _textStyle),
    backgroundColor: Colors.green,
  );
  scaffoldMessengerKey.currentState!.showSnackBar(snackBar);
}
