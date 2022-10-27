import 'package:habitr/models/Category.dart';
import 'package:habitr/screens/feed/feed_viewmodel.dart';

class CategoryDetailsViewModel extends FeedViewModel {
  CategoryDetailsViewModel({
    required Category super.category,
    required super.habitRepository,
  });
}
