import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/screens/add_habit/add_habit_screen.dart';
import 'package:habitr/screens/feed/feed_viewmodel.dart';
import 'package:habitr/widgets/habit/habit_list_tile.dart';
import 'package:habitr/widgets/home_drawer/home_drawer.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  static const page = MaterialPage(child: FeedScreen());

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final habitRepository =
            Provider.of<HabitRepository>(context, listen: false);
        return FeedViewModel(habitRepository: habitRepository);
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(AddHabitScreen.route);
        },
      ),
      body: RefreshIndicator(
        child: PagedListView<String?, Habit>(
          pagingController: viewModel.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Habit>(
            itemBuilder: (context, item, index) {
              return HabitListTile(item.id);
            },
            noItemsFoundIndicatorBuilder: (context) {
              return const Center(
                child: Text('No habits found'),
              );
            },
          ),
        ),
        onRefresh: viewModel.refresh,
      ),
    );
  }
}
