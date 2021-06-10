import 'package:flutter/foundation.dart';

class BaseViewModel extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  void setBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  Object? _error;
  Object? get error => _error;
  void setError(Object error) {
    _error = error;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }

  bool get hasError => _error != null;

  bool _mounted = true;
  bool get mounted => _mounted;
  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (_mounted) {
      super.notifyListeners();
    }
  }
}
