import 'dart:async';

import 'package:flutter/material.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

abstract class Repository<T extends Model> extends ChangeNotifier {
  final Map<String, T> _cache = {};
  Map<String, T> get cache => _cache;

  final Set<String> _loading = {};
  bool isLoading(String id) => _loading.contains(id);

  final List<StreamSubscription> _subscriptions = [];
  void addSubscription(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }

  @protected
  void put(String id, T value) {
    _cache[id] = value;
    notifyListeners();
  }

  @protected
  void putAll(Map<String, T> other) {
    _cache.addAll(other);
    notifyListeners();
  }

  @protected
  T? get(String id) => _cache[id];

  @protected
  void setLoading(String id) {
    _loading.add(id);
    notifyListeners();
  }

  @protected
  void setDoneLoading(String id) {
    _loading.remove(id);
    notifyListeners();
  }

  @override
  void dispose() {
    for (var subscription in _subscriptions) {
      subscription.cancel();
    }
    super.dispose();
  }
}
