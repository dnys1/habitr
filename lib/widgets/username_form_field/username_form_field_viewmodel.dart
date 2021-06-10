import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/util/base_viewmodel.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/validators.dart' as util;
import 'package:stream_transform/stream_transform.dart';

class UsernameFormFieldViewModel extends BaseViewModel {
  UsernameFormFieldViewModel({
    required ApiService apiService,
    void Function(Future<void>)? onUpdateRequestFuture,
    TextEditingController? controller,
  }) : _apiService = apiService {
    if (controller != null) {
      controller.addListener(() {
        _usernameExistsController.add(controller.text);
      });
    }
    _usernameExistsController.stream
        .debounce(const Duration(milliseconds: 400))
        .listen((username) {
      var future = _getUsernameExists(username);
      if (onUpdateRequestFuture != null) {
        onUpdateRequestFuture(future);
      }
    });
  }

  final ApiService _apiService;
  final _usernameExistsController = StreamController<String>();

  bool _usernameExistsLoading = false;
  bool get usernameExistsLoading => _usernameExistsLoading;
  void _setUsernameExistsLoading(bool loading) {
    _usernameExistsLoading = loading;
    notifyListeners();
  }

  bool _usernameExists = false;
  bool get usernameExists => _usernameExists;
  void _setUsernameExists(bool exists) {
    _usernameExists = exists;
    notifyListeners();
  }

  String _username = '';
  String get username => _username;
  void setUsername(String username) {
    _username = username;
    _usernameExistsController.add(username);
    notifyListeners();
  }

  Future<void> _getUsernameExists(String username) async {
    if (username.isEmpty) return;
    _setUsernameExistsLoading(true);
    try {
      final exists = await _apiService.usernameExists(username);
      _setUsernameExists(exists);
    } on Exception catch (e) {
      safePrint('Error checking if username exists: $e');
      _setUsernameExists(true);
    } finally {
      _setUsernameExistsLoading(false);
    }
  }

  String? validateUsername(String? username) {
    if (_usernameExists) {
      return 'Username already exists';
    }
    return util.validateUsername(username);
  }
}
