import 'dart:io';

import 'package:aws_lambda_dart_runtime/aws_lambda_dart_runtime.dart';
import 'package:aws_lambda_dart_runtime/runtime/context.dart';
import 'package:aws_lambda_dart_runtime/runtime/runtime.dart';
import 'package:gql_exec/gql_exec.dart' hide Context;
import 'package:gql_http_link/gql_http_link.dart';
import 'package:habitr_models/habitr_models.dart';

final link = HttpLink(
  Platform.environment['GRAPHQL_API_ENDPOINT']!,
  defaultHeaders: {
    'x-api-key': Platform.environment['GRAPHQL_API_KEY']!,
  },
);

void main() async {
  Runtime()
    ..registerHandler<AwsCognitoEvent>('habitrCreateUser', handler)
    ..invoke();
}

Future<InvocationResult> handler(Context context, AwsCognitoEvent event) async {
  print('Event from Dart: ${event.toJson()}');
  if (event.triggerSource == 'PostConfirmation_ConfirmSignUp') {
    final error = await createUser(event.userName);
    if (error != null) {
      print('Error creating user ${event.userName}: $error');
    }
  }
  return InvocationResult(context.requestId, event);
}

Future<GraphQLError?> createUser(String username) async {
  final request = GCreateUser((b) => b..vars.username = username);

  final resp = await link
      .request(
        Request(
          operation: request.operation,
          variables: request.vars.toJson(),
        ),
      )
      .first;

  final errors = resp.errors ?? [];
  if (errors.isNotEmpty) {
    return errors.first;
  }

  return null;
}
