import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/blocs/auth/auth_bloc.dart';
import 'package:habitr/repos/comment_repository.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/screens/app/app_navigator_state.dart';
import 'package:habitr/screens/category/category_selection_screen.dart';
import 'package:habitr/screens/settings/settings_screen.dart';
import 'package:habitr/screens/signup/add_image_screen.dart';
import 'package:habitr/services/api_service.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  static final _routeBuilders = <String, Route<dynamic> Function()>{
    SettingsScreen.route: () => MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        ),
    CategorySelectionScreen.route: () => MaterialPageRoute(
          builder: (_) => const CategorySelectionScreen(),
        ),
  };

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  late final CommentRepository _commentRepository;
  late final HabitRepository _habitRepository;
  late final UserRepository _userRepository;

  @override
  void initState() {
    super.initState();

    var apiService = Provider.of<ApiService>(context, listen: false);
    var authBloc = BlocProvider.of<AuthBloc>(context, listen: false);

    _commentRepository = CommentRepositoryImpl(
      apiService: apiService,
      authBloc: authBloc,
    );

    _habitRepository = HabitRepositoryImpl(
      apiService: apiService,
      authBloc: authBloc,
      commentRepository: _commentRepository,
    );

    _userRepository = UserRepositoryImpl(
      apiService: apiService,
      authBloc: authBloc,
      commentRepository: _commentRepository,
      habitRepository: _habitRepository,
    );
  }

  @override
  void dispose() {
    // ChangeNotifierProvider.value does not automatically dispose.
    _habitRepository.dispose();
    _commentRepository.dispose();
    _userRepository.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppNavigatorState()),
        ChangeNotifierProvider.value(value: _commentRepository),
        ChangeNotifierProvider.value(value: _habitRepository),
        ChangeNotifierProvider.value(value: _userRepository),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          var navigatorState = Provider.of<AppNavigatorState>(context);
          return Navigator(
            pages: [
              if (authState is AuthInFlow)
                AddImageScreen.page
              else
                navigatorState.baseRoute,
            ],
            onPopPage: (route, result) => route.didPop(result),
            onGenerateRoute: (routeSettings) =>
                AppScreen._routeBuilders[routeSettings.name]?.call(),
          );
        },
      ),
    );
  }
}
