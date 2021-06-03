import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:habitr/models/ModelProvider.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr_models/habitr_models.dart';
import 'package:gql/language.dart' as gql;
import 'package:gql/ast.dart' as ast;

abstract class AuthService {
  Future<User> login(String username, String password);
  Future<void> signUp(String username, String password, String email);
  Future<void> verify(String username, String code);
  Future<void> logout();
  Future<User?> get currentUser;
  Stream<User> get userUpdates;
  Future<bool> get isLoggedIn;
}

class AmplifyAuthService implements AuthService {
  final ApiService _apiService;

  AmplifyAuthService({
    required ApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<User> login(String username, String password) async {
    final user = await currentUser;
    if (user != null) {
      return user;
    }
    final result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );
    if (!result.isSignedIn) {
      throw const AuthException('Could not login');
    }
    return (await currentUser)!;
  }

  @override
  Future<void> signUp(String username, String password, String email) async {
    await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(
        userAttributes: {'email': email},
      ),
    );
  }

  @override
  Future<void> verify(String username, String code) async {
    final result = await Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: code,
    );
    if (!result.isSignUpComplete) {
      throw const AuthException();
    }
  }

  @override
  Future<User?> get currentUser async {
    if (!await isLoggedIn) {
      return null;
    }
    final user = await Amplify.Auth.getCurrentUser();
    return _apiService.getUser(user.username);
  }

  Future<String?> get username async {
    if (!await isLoggedIn) {
      return null;
    }
    final user = await Amplify.Auth.getCurrentUser();
    return user.username;
  }

  @override
  Future<bool> get isLoggedIn async {
    try {
      final result = await Amplify.Auth.fetchAuthSession();
      return result.isSignedIn;
    } on SignedOutException {
      return false;
    }
  }

  @override
  Future<void> logout() {
    return Amplify.Auth.signOut();
  }

  final _userController = StreamController<User>.broadcast();
  GraphQLSubscriptionOperation? _subscription;

  @override
  Stream<User> get userUpdates async* {
    const _document = ast.DocumentNode(definitions: [
      AllUserFields,
      SubscribeToUser,
    ]);
    final request = gql.printNode(_document);

    _subscription ??= Amplify.API.subscribe<String>(
      request: GraphQLRequest(
        document: request,
        variables: {
          'username': await username,
        },
      ),
      onData: (event) {
        final data = event.data;
        final userMap =
            (jsonDecode(data) as Map<String, dynamic>)['subscribeToUser'];
        final user = User.fromJson(userMap);
        _userController.add(user);
      },
      onEstablished: () {},
      onError: (error) {
        _userController.addError(error);
      },
      onDone: () {
        print('Done');
      },
    );
    _userController.onCancel ??= () {
      _subscription!.cancel();
      _subscription = null;
      _userController.onCancel = null;
    };

    yield* _userController.stream;
  }
}

class AuthException implements Exception {
  final String message;

  const AuthException([this.message = 'An unknown error occurred.']);

  @override
  String toString() => 'AuthException{ message: "$message" }';
}
