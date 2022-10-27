import 'dart:async';

import 'package:flutter/material.dart';

abstract class Repository<T> extends ChangeNotifier {
  final Map<String, T> _cache = {};
  Map<String, T> get cache => _cache;

  final Set<String> _loading = {};
  bool isLoading(String id) => _loading.contains(id);

  final List<StreamSubscription<Object?>> _subscriptions = [];
  void addSubscription(StreamSubscription<Object?> subscription) {
    _subscriptions.add(subscription);
  }

  @protected
  T put(String id, T value) {
    _cache[id] = value;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
    return value;
  }

  @protected
  void putAll(Map<String, T> other) {
    _cache.addAll(other);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  T? get(String id) => _cache[id];
  bool has(String id) => _cache.containsKey(id);

  @protected
  void setLoading(String id) {
    _loading.add(id);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  @protected
  void setDoneLoading(String id) {
    _loading.remove(id);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  bool _mounted = true;
  bool get mounted => _mounted;

  @override
  void dispose() {
    _mounted = false;
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (_mounted) {
      super.notifyListeners();
    }
  }
}
