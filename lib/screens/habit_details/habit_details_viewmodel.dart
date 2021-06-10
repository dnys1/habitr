import 'package:flutter/material.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/models/Habit.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';

class HabitDetailsViewModel extends BaseViewModel {
  HabitDetailsViewModel({
    required AuthBloc authBloc,
    required HabitRepository habitRepository,
    required CommentRepository commentRepository,
    required this.habitId,
  })  : _authBloc = authBloc,
        _habitRepository = habitRepository,
        _commentRepository = commentRepository {
    _init();
  }

  final String habitId;
  final AuthBloc _authBloc;
  final HabitRepository _habitRepository;
  final CommentRepository _commentRepository;

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

  bool _userOwnsHabit = false;
  bool get userOwnsHabit => _userOwnsHabit;

  Future<void> _init() async {
    setBusy(true);
    try {
      var habit = await _habitRepository.getHabit(habitId);
      if (habit == null) {
        throw Exception('Habit not found');
      }
      _habit = habit;
      _commentController.addListener(notifyListeners);

      var authState = _authBloc.state as AuthLoggedIn;
      if (authState.user.username == _habit.owner) {
        _userOwnsHabit = true;
      }
    } on Exception catch (e) {
      safePrint('Error loading habit: $e');
      showErrorSnackbar('Error loading habit. Please try again.');
    } finally {
      setBusy(false);
    }
  }

  Future<void> sendComment() async {
    if (comment.isEmpty) return;
    _setIsSendingComment(true);
    try {
      await _commentRepository.addComment(
        comment,
        habit.id,
      );

      _commentController.clear();
      showSuccessSnackbar('Successfully posted comment.');
    } on Exception catch (e) {
      safePrint('Error posting comment: $e');
      showErrorSnackbar('Error posting comment. Please try again.');
    } finally {
      _setIsSendingComment(false);
    }
  }

  Future<bool> deleteHabit() async {
    if (!_userOwnsHabit) return false;
    setBusy(true);
    try {
      final deleted = await _habitRepository.deleteHabit(habitId);
      if (!deleted) {
        throw Exception('Could not delete habit.');
      }
      showSuccessSnackbar('Successfully deleted habit.');
      return deleted;
    } on Exception catch (e) {
      safePrint('Error deleting habit: $e');
      showErrorSnackbar('Error deleting habit. Please try again.');
      return false;
    } finally {
      setBusy(false);
    }
  }
}
