import 'package:flutter/foundation.dart';

/// Prints only in debug mode and not in release mode. Prevents leaking of
/// sensitive information.
void safePrint(Object? arg) {
  if (kDebugMode) {
    //ignore:avoid_print
    print(arg);
  }
}
