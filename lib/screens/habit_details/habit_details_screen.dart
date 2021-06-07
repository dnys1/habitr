import 'package:flutter/material.dart';
import 'package:habitr/screens/habit_details/habit_details_viewmodel.dart';
import 'package:provider/provider.dart';

class HabitDetailsScreen extends StatelessWidget {
  const HabitDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return HabitDetailsViewModel();
      },
      builder: (context, _) {
        final viewModel = Provider.of<HabitDetailsViewModel>(context);
        return _HabitDetailsScreenView(viewModel: viewModel);
      },
    );
  }
}

class _HabitDetailsScreenView extends StatelessWidget {
  final HabitDetailsViewModel viewModel;

  const _HabitDetailsScreenView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
