import 'package:flutter/material.dart';
import 'package:habitr/screens/settings/settings_viewmodel.dart';
import 'package:habitr/services/analytics_service.dart';
import 'package:habitr/services/preferences_service.dart';
import 'package:habitr/services/theme_service.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final preferencesService =
            Provider.of<PreferencesService>(context, listen: false);
        final analyticsService =
            Provider.of<AnalyticsService>(context, listen: false);
        return SettingsViewModel(
          preferencesService: preferencesService,
          analyticsService: analyticsService,
        );
      },
      builder: (context, _) {
        final viewModel = Provider.of<SettingsViewModel>(context);
        return _SettingsScreenView(viewModel: viewModel);
      },
    );
  }
}

class _SettingsScreenView extends StatelessWidget {
  const _SettingsScreenView({
    required this.viewModel,
  });

  final SettingsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SwitchListTile.adaptive(
              title: const Text('Enable Analytics'),
              value: viewModel.analyticsEnabled,
              onChanged: viewModel.enableAnalytics,
            ),
            SwitchListTile.adaptive(
              title: const Text('Dark Mode'),
              value: Provider.of<ThemeService>(context).isDarkModeEnabled,
              onChanged: Provider.of<ThemeService>(context).setDarkModeEnabled,
            )
          ],
        ),
      ),
    );
  }
}
