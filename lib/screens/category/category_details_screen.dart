import 'package:flutter/material.dart';
import 'package:habitr/models/Category.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/screens/category/category_details_viewmodel.dart';
import 'package:habitr/widgets/habit/habit_list_tile.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen(this.category, {Key? key}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final habitRepository =
            Provider.of<HabitRepository>(context, listen: false);
        return CategoryDetailsViewModel(
          category: category,
          habitRepository: habitRepository,
        );
      },
      builder: (context, _) {
        return _CategoryDetailsView(Provider.of(context), category: category);
      },
    );
  }
}

class _CategoryDetailsView extends StatelessWidget {
  const _CategoryDetailsView(
    this.viewModel, {
    required this.category,
    Key? key,
  }) : super(key: key);

  final Category category;
  final CategoryDetailsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.string),
      ),
      body: PagedListView<String?, Habit>(
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
    );
  }
}
