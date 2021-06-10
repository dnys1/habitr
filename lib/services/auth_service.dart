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
  Future<User?> loginWithProvider(AuthProvider provider);
  Future<void> signUp(String username, String password, String email);
  Future<void> resendVerificationCode(String username);
  Future<void> verify(String username, String code);
  Future<void> logout();
  Future<User?> get currentUser;
  Future<String?> get username;
  Stream<User> get userUpdates;
  Future<bool> get isLoggedIn;
  Future<String?> get cognitoIdentityId;
}

class AmplifyAuthService implements AuthService {
  final ApiService _apiService;

  AmplifyAuthService({
    required ApiService apiService,
  }) : _apiService = apiService;

  StreamController<User>? _userController;
  GraphQLSubscriptionOperation? _userSubscription;

  @override
  Stream<User> get userUpdates async* {
    const operationName = 'subscribeToUser';
    const _document = ast.DocumentNode(definitions: [
      AllPublicUserFields,
      AllCommentFields,
      AllHabitFields,
      SubscribeToUser,
    ]);
    final request = gql.printNode(_document);

    _userController ??= StreamController<User>.broadcast();
    _userSubscription ??= Amplify.API.subscribe<String>(
      request: GraphQLRequest(
        document: request,
        variables: {
          'username': await username,
        },
      ),
      onData: (event) {
        final data = event.data;
        final userMap = jsonDecode(data) as Map<String, dynamic>;
        final user = User.fromJson(userMap[operationName]);
        _userController!.add(user);
      },
      onEstablished: () {},
      onError: (error) => _userController!.addError(error),
      onDone: () {},
    );
    _userController!.onCancel ??= () {
      _userSubscription?.cancel();
      _userSubscription = null;
      _userController = null;
    };

    yield* _userController!.stream;
  }

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
  Future<User?> loginWithProvider(AuthProvider provider) async {
    final user = await currentUser;
    if (user != null) {
      return user;
    }
    try {
      final result = await Amplify.Auth.signInWithWebUI(provider: provider);
      if (!result.isSignedIn) {
        throw const AuthException('Could not login');
      }
      return (await currentUser)!;
    } on UserCancelledException {
      return null;
    }
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
  Future<void> resendVerificationCode(String username) {
    return Amplify.Auth.resendSignUpCode(username: username);
  }

  @override
  Future<User?> get currentUser async {
    if (!await isLoggedIn) {
      return null;
    }
    final user = await Amplify.Auth.getCurrentUser();
    return _apiService.getUser(user.username, self: true);
  }

  @override
  Future<String?> get cognitoIdentityId async {
    final resp = await Amplify.API
        .get(
          restOptions: RestOptions(
            path: '/user/identity',
            apiName: 'habitrAPI',
          ),
        )
        .response;
    final body = jsonDecode(ascii.decode(resp.data)) as Map<String, dynamic>;
    return body['identityId'];
  }

  @override
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
  Future<void> logout() async {
    await Amplify.Auth.signOut();
  }
}

class AuthException implements Exception {
  final String message;
  final Object? wrappedException;
  final StackTrace? stackTrace;

  const AuthException([
    this.message = 'An unknown error occurred.',
    this.wrappedException,
    this.stackTrace,
  ]);

  @override
  String toString() => 'AuthException{ message: "$message" }';
}
