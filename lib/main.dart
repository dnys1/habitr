import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/blocs/observer.dart';
import 'package:habitr/screens/feed/feed_screen.dart';
import 'package:habitr/screens/loading/loading_screen.dart';
import 'package:habitr/screens/login/login_screen.dart';
import 'package:habitr/screens/signup/add_image_screen.dart';
import 'package:habitr/screens/signup/signup_screen.dart';
import 'package:habitr/screens/signup/verify_screen.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/backend_service.dart';
import 'package:habitr/services/data_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:provider/provider.dart';

void main() {
  Bloc.observer = HabitrBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  late final AuthService _authService;
  final ApiService _apiService;
  final BackendService _backendService;
  final DataService _dataService;
  late final StorageService _storageService;

  MyApp({
    Key? key,
    AuthService? authService,
    ApiService? apiService,
    BackendService? backendService,
    DataService? dataService,
    StorageService? storageService,
  })  : _apiService = apiService ?? AmplifyApiService(),
        _backendService = backendService ?? AmplifyBackendService(),
        _dataService = dataService ?? AmplifyDataService(),
        super(key: key) {
    _authService = authService ??
        AmplifyAuthService(
          apiService: _apiService,
        );
    _storageService = storageService ??
        AmplifyStorageService(_apiService as AmplifyApiService);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AuthBloc _authBloc;
  late StreamSubscription<AuthException> _authExceptions;

  @override
  void initState() {
    super.initState();
    _authBloc = AuthBloc(
      widget._authService,
      widget._backendService,
      widget._dataService,
    )..add(const AuthLoad());

    _authExceptions = _authBloc.exceptions.listen((exception) {
      safePrint('Auth Exception: ${exception.message}');
      showErrorSnackbar(exception.message);
    });

    widget._storageService.init();
  }

  @override
  void dispose() {
    _authExceptions.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: widget._authService),
        Provider.value(value: widget._backendService),
        Provider.value(value: widget._apiService),
        Provider.value(value: widget._storageService),
        Provider.value(value: widget._dataService),
      ],
      child: BlocProvider.value(
        value: _authBloc,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          scaffoldMessengerKey: scaffoldMessengerKey,
          home: StreamBuilder<AuthState>(
            stream: _authBloc.stream,
            builder: (context, snapshot) {
              final state = snapshot.data ?? const AuthLoading();
              return Navigator(
                pages: [
                  if (state is AuthLoading)
                    const MaterialPage(child: LoadingScreen()),
                  if (state is AuthInFlow && state.screen == AuthScreen.login)
                    const MaterialPage(child: LoginScreen()),
                  if (state is AuthInFlow && state.screen == AuthScreen.signup)
                    const MaterialPage(child: SignupScreen()),
                  if (state is AuthInFlow && state.screen == AuthScreen.verify)
                    const MaterialPage(child: VerifyScreen()),
                  if (state is AuthInFlow &&
                      state.screen == AuthScreen.addImage)
                    const MaterialPage(child: AddImageScreen()),
                  if (state is AuthLoggedIn)
                    const MaterialPage(child: FeedScreen()),
                ],
                onPopPage: (route, result) {
                  return route.didPop(result);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}