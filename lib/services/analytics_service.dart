import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_flutter/amplify.dart';

abstract class AnalyticsService {
  Future<void> recordEvent(
    String name, {
    Map<String, dynamic> properties,
  });
}

class AmplifyAnalyticsService extends AnalyticsService {
  @override
  Future<void> recordEvent(
    String name, {
    Map<String, dynamic> properties = const {},
  }) async {
    final event = AnalyticsEvent(name);
    for (var entry in properties.entries) {
      var key = entry.key;
      var value = entry.value;
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
}
