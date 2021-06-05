import 'package:flutter/material.dart';
import 'package:habitr/services/theme_service.dart';
import 'package:provider/provider.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

bool get _mounted {
  return scaffoldMessengerKey.currentContext != null &&
      scaffoldMessengerKey.currentState != null;
}

bool get _isDarkMode {
  final theme = Provider.of<ThemeService>(
    scaffoldMessengerKey.currentContext!,
    listen: false,
  );
  return theme.isDarkModeEnabled;
}

ThemeData get _theme {
  return Theme.of(scaffoldMessengerKey.currentContext!);
}

TextStyle get _textStyle {
  return _theme.textTheme.bodyText2!.copyWith(
    color: _isDarkMode ? Colors.white : Colors.black,
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
