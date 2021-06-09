import 'package:flutter/material.dart';
import 'package:habitr/screens/feed/feed_screen.dart';

class AppNavigatorState extends ChangeNotifier {
  Page _baseRoute = FeedScreen.page;
  Page get baseRoute => _baseRoute;
  void setBaseRoute(Page page) {
    _baseRoute = page;
    notifyListeners();
  }
}
