import 'package:flutter/material.dart';
import 'package:habitr/services/preferences_service.dart';

class ThemeService extends ChangeNotifier {
  static const darkModeEnabledKey = 'theme:dark_mode_enabled';

  ThemeService({
    required PreferencesService preferencesService,
  }) : _preferencesService = preferencesService;

  final PreferencesService _preferencesService;

  bool get isDarkModeEnabled =>
      _preferencesService.getBool(darkModeEnabledKey) ?? false;

  Future<void> setDarkModeEnabled(bool enabled) async {
    await _preferencesService.setBool(
      darkModeEnabledKey,
      enabled,
    );
    notifyListeners();
  }
}
