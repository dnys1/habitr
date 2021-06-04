import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesService {
  Future<void> init() async {}
  Future<bool> clear();
  bool containsKey(String key);
  Object? get(String key);
  bool? getBool(String key);
  double? getDouble(String key);
  int? getInt(String key);
  Set<String> getKeys();
  String? getString(String key);
  List<String>? getStringList(String key);
  Future<void> reload();
  Future<bool> remove(String key);
  Future<bool> setBool(String key, bool value);
  Future<bool> setDouble(String key, double value);
  Future<bool> setInt(String key, int value);
  Future<bool> setString(String key, String value);
  Future<bool> setStringList(String key, List<String> value);
}

class SharedPreferencesService extends PreferencesService {
  late final SharedPreferences _preferences;
  Future<void>? _initFuture;

  @override
  Future<void> init() {
    _initFuture ??= () async {
      _preferences = await SharedPreferences.getInstance();
    }();
    return _initFuture!;
  }

  @override
  Future<bool> clear() => _preferences.clear();

  @override
  bool containsKey(String key) => _preferences.containsKey(key);

  @override
  Object? get(String key) => _preferences.get(key);

  @override
  bool? getBool(String key) => _preferences.getBool(key);

  @override
  double? getDouble(String key) => _preferences.getDouble(key);

  @override
  int? getInt(String key) => _preferences.getInt(key);

  @override
  Set<String> getKeys() => _preferences.getKeys();

  @override
  String? getString(String key) => _preferences.getString(key);

  @override
  List<String>? getStringList(String key) => _preferences.getStringList(key);

  @override
  Future<void> reload() => _preferences.reload();

  @override
  Future<bool> remove(String key) => _preferences.remove(key);

  @override
  Future<bool> setBool(String key, bool value) =>
      _preferences.setBool(key, value);

  @override
  Future<bool> setDouble(String key, double value) =>
      _preferences.setDouble(key, value);

  @override
  Future<bool> setInt(String key, int value) => _preferences.setInt(key, value);

  @override
  Future<bool> setString(String key, String value) =>
      _preferences.setString(key, value);

  @override
  Future<bool> setStringList(String key, List<String> value) =>
      _preferences.setStringList(key, value);
}
