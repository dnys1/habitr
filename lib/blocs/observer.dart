import 'package:amplify_flutter/amplify_flutter.dart' show safePrint;
import 'package:flutter_bloc/flutter_bloc.dart';

class HabitrBlocObserver extends BlocObserver {
  @override
  void onTransition(
    Bloc<Object?, Object?> bloc,
    Transition<Object?, Object?> transition,
  ) {
    safePrint('[${bloc.runtimeType}]: $transition');
    super.onTransition(bloc, transition);
  }
}
