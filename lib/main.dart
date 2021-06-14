import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/blocs/auth/auth_data.dart';
import 'package:habitr/blocs/observer.dart';
import 'package:habitr/screens/app/app_screen.dart';
import 'package:habitr/screens/loading/loading_screen.dart';
import 'package:habitr/screens/login/login_screen.dart';
import 'package:habitr/screens/signup/signup_screen.dart';
import 'package:habitr/screens/signup/verify_screen.dart';
import 'package:habitr/services/analytics_service.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/backend_service.dart';
import 'package:habitr/services/preferences_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/services/theme_service.dart';
import 'package:habitr/util/print.dart';
import 'package:habitr/util/scaffold.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = HabitrBlocObserver();
  final preferencesService = SharedPreferencesService();
  await preferencesService.init();

  runApp(MyApp(
    preferencesService: preferencesService,
  ));
}

class MyApp extends StatefulWidget {
  late final AuthService _authService;
  final ApiService _apiService;
  final BackendService _backendService;
  late final StorageService _storageService;
  late final AnalyticsService _analyticsService;
  final PreferencesService _preferencesService;
  late final ThemeService _themeService;

  MyApp({
    Key? key,
    AuthService? authService,
    ApiService? apiService,
    BackendService? backendService,
    StorageService? storageService,
    AnalyticsService? analyticsService,
    PreferencesService? preferencesService,
    ThemeService? themeService,
  })  : _apiService = apiService ?? AmplifyApiService(),
        _backendService = backendService ?? AmplifyBackendService(),
        _preferencesService = preferencesService ?? SharedPreferencesService(),
        super(key: key) {
    _analyticsService = analyticsService ??
        AmplifyAnalyticsService(
          preferencesService: _preferencesService,
        );
    _authService = authService ??
        AmplifyAuthService(
          apiService: _apiService,
        );
    _storageService = storageService ??
        AmplifyStorageService(
          _analyticsService,
          _authService,
        );
    _themeService = themeService ??
        ThemeService(
          preferencesService: _preferencesService,
        );
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
      widget._preferencesService,
      widget._storageService,
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
        Provider.value(value: widget._analyticsService),
        Provider.value(value: widget._preferencesService),
        ChangeNotifierProvider.value(value: widget._storageService),
        ChangeNotifierProvider.value(value: widget._themeService),
      ],
      child: BlocProvider.value(
        value: _authBloc,
        child: Builder(
          builder: (context) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                brightness: Provider.of<ThemeService>(context).isDarkModeEnabled
                    ? Brightness.dark
                    : Brightness.light,
              ),
              scaffoldMessengerKey: scaffoldMessengerKey,
              debugShowCheckedModeBanner: false,
              home: StreamBuilder<AuthState>(
                initialData: const AuthLoading(),
                stream: _authBloc.stream,
                builder: (context, state) {
                  var authState = state.data;
                  return Navigator(
                    pages: [
                      if (authState is AuthLoading)
                        const MaterialPage<void>(child: LoadingScreen()),
                      if (authState is AuthInFlow &&
                          authState.screen == AuthScreen.login)
                        const MaterialPage<void>(child: LoginScreen()),
                      if (authState is AuthInFlow &&
                          authState.screen == AuthScreen.signup)
                        const MaterialPage<void>(child: SignupScreen()),
                      if (authState is AuthInFlow &&
                          authState.screen == AuthScreen.verify)
                        const MaterialPage<void>(child: VerifyScreen()),
                      if ((authState is AuthInFlow &&
                              authState.screen == AuthScreen.addImage) ||
                          authState is AuthLoggedIn)
                        const MaterialPage<void>(child: AppScreen()),
                    ],
                    onPopPage: (route, dynamic result) {
                      return route.didPop(result);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
