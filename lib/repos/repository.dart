import 'dart:async';

import 'package:flutter/material.dart';

abstract class Repository<T> extends ChangeNotifier {
  final Map<String, T> _cache = {};
  Map<String, T> get cache => _cache;

  final Set<String> _loading = {};
  bool isLoading(String id) => _loading.contains(id);

  final List<StreamSubscription> _subscriptions = [];
  void addSubscription(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }

  @protected
  T put(String id, T value) {
    _cache[id] = value;
    notifyListeners();
    return value;
  }

  @protected
  void putAll(Map<String, T> other) {
    _cache.addAll(other);
    notifyListeners();
  }

  T? get(String id) => _cache[id];
  bool has(String id) => _cache.containsKey(id);

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
