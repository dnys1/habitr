import 'package:habitr/models/Category.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/screens/feed/feed_viewmodel.dart';

class CategoryDetailsViewModel extends FeedViewModel {
  CategoryDetailsViewModel({
    required Category category,
    required HabitRepository habitRepository,
  }) : super(
          category: category,
          habitRepository: habitRepository,
        );
}
