import 'package:amplify_flutter/amplify_flutter.dart' show safePrint;
import 'package:flutter/material.dart';
import 'package:habitr/models/Category.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/scaffold.dart';

class AddHabitViewModel extends BaseViewModel {
  AddHabitViewModel({
    required HabitRepository habitRepository,
  }) : _habitRepository = habitRepository;

  final HabitRepository _habitRepository;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  final _taglineController = TextEditingController();
  TextEditingController get taglineController => _taglineController;

  final _detailsController = TextEditingController();
  TextEditingController get detailsController => _detailsController;

  String get _tagline => _taglineController.text;
  String get _details => _detailsController.text;

  Category? _category;
  Category? get category => _category;
  void onSelectCategory(Category? category) {
    _category = category;
    notifyListeners();
  }

  bool get isDirty => _category != null && _tagline.isNotEmpty;

  Future<Habit?> save() async {
    if (!_formKey.currentState!.validate()) return null;
    setBusy(true);
    try {
      final habit = await _habitRepository.createHabit(
        tagline: _tagline,
        category: _category!,
        details: _details,
      );
      showSuccessSnackbar('Habit successfully created.');
      return habit;
    } on Exception catch (e) {
      safePrint('Error saving habit: $e');
      showErrorSnackbar('Error creating habit. Please try again.');
      return null;
    } finally {
      setBusy(false);
    }
  }
}
