/// Generates an error message from an [error] and a [stackTrace].
String buildErrorMessage([Object? error, StackTrace? stackTrace]) {
  final errorMessage = error?.toString() ?? 'An unknown error occurred';
  return errorMessage +
      (stackTrace != null ? '\n${stackTrace.toString()}' : '');
}
