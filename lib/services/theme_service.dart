import 'package:flutter/material.dart';
import 'package:habitr/services/preferences_service.dart';

class ThemeService extends InheritedNotifier<ValueNotifier> {
  static const darkModeEnabledKey = 'theme:dark_mode_enabled';

  ThemeService({
    required PreferencesService preferencesService,
    required Widget child,
    Key? key,
  })  : _preferencesService = preferencesService,
        super(key: key, notifier: _isDarkModeEnabled, child: child) {
    _isDarkModeEnabled.value =
        _preferencesService.getBool(darkModeEnabledKey) ?? false;
  }

  final PreferencesService _preferencesService;
  static final ValueNotifier<bool> _isDarkModeEnabled = ValueNotifier(false);

  bool get isDarkModeEnabled => _isDarkModeEnabled.value;

  static ThemeService of(BuildContext context, {bool listen = true}) {
    ThemeService? themeService;
    if (listen) {
      themeService = context.dependOnInheritedWidgetOfExactType<ThemeService>();
    } else {
      themeService = context.findAncestorWidgetOfExactType<ThemeService>();
    }
    assert(themeService != null, 'No ThemeService found above this widget.');
    return themeService!;
  }

  Future<void> setDarkModeEnabled(bool enabled) async {
    await _preferencesService.setBool(
      darkModeEnabledKey,
      enabled,
    );
    _isDarkModeEnabled.value = enabled;
  }
}
