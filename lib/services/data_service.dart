import 'package:amplify_flutter/amplify.dart';
import 'package:habitr/models/Habit.dart';

abstract class DataService {
  Stream<Habit> get habits;
}

class AmplifyDataService extends DataService {
  @override
  Stream<Habit> get habits {
    // return Amplify.DataStore.observe(Habit.classType).map(
    //   (event) => event.item,
    // );
    return const Stream.empty();
  }
}
