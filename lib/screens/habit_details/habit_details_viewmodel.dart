import 'package:flutter/material.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';

class HabitDetailsViewModel extends BaseViewModel {
  HabitDetailsViewModel({
    required HabitRepository habitRepository,
    Habit? habit,
    String? habitId,
  }) : _habitRepository = habitRepository {
    _init(habit: habit, habitId: habitId);
  }

  final HabitRepository _habitRepository;

  final _commentController = TextEditingController();
  TextEditingController get commentController => _commentController;

  late Habit _habit;
  Habit get habit => _habit;

  bool _isSendingComment = false;
  bool get isSendingComment => _isSendingComment;
  void _setIsSendingComment(bool isSendingComment) {
    _isSendingComment = isSendingComment;
    notifyListeners();
  }

  String get comment => _commentController.text;

  bool get isDirty => comment.isNotEmpty;

  Future<void> _init({Habit? habit, String? habitId}) async {
    setBusy(true);
    try {
      habit ??= await _habitRepository.getHabit(habitId!);
      if (habit == null) {
        throw Exception('Habit not found');
      }
      _habit = habit;
      _commentController.addListener(notifyListeners);
    } finally {
      setBusy(false);
    }
  }

  Future<void> sendComment() async {
    if (comment.isEmpty) return;
    _setIsSendingComment(true);
    try {
      // TODO: post comment

      _commentController.clear();
      showSuccessSnackbar('Successfully posted comment.');
    } on Exception catch (e) {
      safePrint('Error posting comment: $e');
      showErrorSnackbar('Error posting comment. Please try again.');
    } finally {
      _setIsSendingComment(false);
    }
  }
}
