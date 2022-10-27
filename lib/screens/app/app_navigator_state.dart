import 'package:flutter/material.dart';
import 'package:habitr/screens/feed/feed_screen.dart';

class AppNavigatorState extends ChangeNotifier {
  Page<void> _baseRoute = FeedScreen.page;
  Page<void> get baseRoute => _baseRoute;
  void setBaseRoute(Page<void> page) {
    _baseRoute = page;
    notifyListeners();
  }
}
