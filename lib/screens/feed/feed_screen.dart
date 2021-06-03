import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/screens/feed/feed_viewmodel.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/data_service.dart';
import 'package:habitr/widgets/habit/habit_list_tile.dart';
import 'package:habitr/widgets/home_drawer/home_drawer.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
        final apiService = Provider.of<ApiService>(context, listen: false);
        final dataService = Provider.of<DataService>(context, listen: false);
        return FeedViewModel(
          authBloc: authBloc,
          apiService: apiService,
          dataService: dataService,
        )..init();
      },
      builder: (context, _) {
        return _FeedView(
          viewModel: Provider.of<FeedViewModel>(context),
        );
      },
    );
  }
}

class _FeedView extends StatelessWidget {
  final FeedViewModel viewModel;

  const _FeedView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      drawer: const HomeDrawer(),
      body: viewModel.isBusy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: viewModel.habits.values
                  .map(
                    (habit) => HabitListTile(
                      habit: habit,
                      isUpvoted: viewModel.isUpvoted(habit),
                      isLoading: viewModel.loadingHabits.contains(habit.id),
                      onClickUpvote: () => viewModel.vote(habit, true),
                      onClickDownvote: () => viewModel.vote(habit, false),
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
