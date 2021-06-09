import 'package:flutter/material.dart';
import 'package:habitr/screens/app/app_navigator_state.dart';
import 'package:habitr/screens/settings/settings_screen.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  static final _routeBuilders = <String, Route<dynamic> Function()>{
    SettingsScreen.route: () => MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        ),
  };

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppNavigatorState(),
      child: Builder(
        builder: (context) {
          var state = Provider.of<AppNavigatorState>(context);
          return Navigator(
            pages: [
              state.baseRoute,
            ],
            onPopPage: (route, result) => route.didPop(result),
            onGenerateRoute: (routeSettings) =>
                _routeBuilders[routeSettings.name]?.call(),
          );
        },
      ),
    );
  }
}
