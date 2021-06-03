import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/util/print.dart';

class HabitrBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    safePrint('[${bloc.runtimeType}]: $transition');
    super.onTransition(bloc, transition);
  }
}
