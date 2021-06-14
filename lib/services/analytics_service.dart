import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:habitr/services/preferences_service.dart';

abstract class AnalyticsService {
  static const analyticsEnabledKey = 'analytics:enabled';

  const AnalyticsService();

  Future<void> init() async {}
  Future<void> recordEvent(
    String name, {
    Map<String, dynamic> properties,
  });
  Future<void> enable();
  Future<void> disable();
}

class AmplifyAnalyticsService extends AnalyticsService {
  final PreferencesService _preferencesService;

  const AmplifyAnalyticsService({
    required PreferencesService preferencesService,
  }) : _preferencesService = preferencesService;

  @override
  Future<void> init() async {
    final enabled =
        _preferencesService.getBool(AnalyticsService.analyticsEnabledKey) ??
            true;
    if (!enabled) {
      await disable();
    }
  }

  @override
  Future<void> recordEvent(
    String name, {
    Map<String, dynamic> properties = const <String, dynamic>{},
  }) async {
    final event = AnalyticsEvent(name);
    for (var entry in properties.entries) {
      var key = entry.key;
      dynamic value = entry.value;
      switch (value.runtimeType) {
        case bool:
          event.properties.addBoolProperty(key, value as bool);
          break;
        case double:
          event.properties.addDoubleProperty(key, value as double);
          break;
        case int:
          event.properties.addIntProperty(key, value as int);
          break;
        case String:
          event.properties.addStringProperty(key, value as String);
          break;
      }
    }
    return Amplify.Analytics.recordEvent(event: event);
  }

  @override
  Future<void> disable() async {
    await _preferencesService.setBool(
        AnalyticsService.analyticsEnabledKey, false);
    return Amplify.Analytics.disable();
  }

  @override
  Future<void> enable() async {
    await _preferencesService.setBool(
        AnalyticsService.analyticsEnabledKey, true);
    return Amplify.Analytics.enable();
  }
}
