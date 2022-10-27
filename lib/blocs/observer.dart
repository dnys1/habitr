import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitr/util/print.dart';

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
