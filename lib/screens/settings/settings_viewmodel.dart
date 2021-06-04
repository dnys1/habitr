import 'package:habitr/services/analytics_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/preferences_service.dart';
import 'package:habitr/services/theme_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';

class SettingsViewModel extends BaseViewModel {
  final PreferencesService _preferencesService;
  final AnalyticsService _analyticsService;
  final AuthService _authService;

  SettingsViewModel({
    required PreferencesService preferencesService,
    required AnalyticsService analyticsService,
    required AuthService authService,
  })  : _preferencesService = preferencesService,
        _analyticsService = analyticsService,
        _authService = authService;

  bool get analyticsEnabled =>
      _preferencesService.getBool(AnalyticsService.analyticsEnabledKey) ?? true;

  Future<void> enableAnalytics(bool enable) async {
    try {
      if (enable) {
        await _analyticsService.enable();
      } else {
        await _analyticsService.disable();
      }
      notifyListeners();
    } on Exception catch (e) {
      safePrint('Error enabling analytics: $e');
      showErrorSnackbar(
          'Error ${enable ? "enabling" : "disabling"} analytics. Please try again later.');
    }
  }
}
