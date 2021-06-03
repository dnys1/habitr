//ignore_for_file:avoid_print
import 'dart:io';
import 'dart:math';

import 'package:args/args.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:habitr_models/habitr_models.dart';
import 'package:gql_http_link/gql_http_link.dart';

Future<void> main(List<String> args) async {
  var graphQLEndpoint = Platform.environment['GRAPHQL_API_ENDPOINT'];
  var apiKey = Platform.environment['GRAPHQL_API_KEY'];

  final parser = ArgParser();

  parser.addOption(
    'user',
    help: 'The Cognito user to execute operations on behalf of.',
    valueHelp: 'USER',
    mandatory: true,
  );

  if (graphQLEndpoint == null || apiKey == null) {
    parser.addOption(
      'endpoint',
      help: 'The endpoint for your GraphQL API.',
      valueHelp: 'GRAPHQL_API_ENDPOINT',
      mandatory: true,
    );

    parser.addOption(
      'api-key',
      help: 'The API key for your GraphQL endpoint.',
      valueHelp: 'GRAPHQL_API_KEY',
      mandatory: true,
    );
  }

  final values = parser.parse(args);

  graphQLEndpoint ??= values['endpoint'];
  apiKey ??= values['api-key'];

  final user = values['user'] as String;

  final link = HttpLink(
    graphQLEndpoint!,
    defaultHeaders: {
      'x-api-key': apiKey!,
    },
  );

  return seedDB(link, user: user);
}

Future<void> seedDB(HttpLink link, {required String user}) async {
  const categories = [
    'Health',
    'Finance',
    'Productivity',
    'Relationships',
  ];

  final random = Random();
  for (var i = 0; i < 20; i++) {
    final habit = <String, dynamic>{
      'tagline': lorem(paragraphs: 1, words: 10),
      'category': categories[random.nextInt(categories.length)],
      'ups': random.nextInt(10),
      'downs': random.nextInt(10),
      'owner': user,
    };
    final input = GCreateHabitInput.fromJson(habit)!;
    final req = GCreateHabit(
      (b) => b..vars.habit.replace(input),
    );
    final resp = await link
        .request(
          Request(
            operation: req.operation,
            variables: req.vars.toJson(),
          ),
        )
        .first;

    final didErrorOccur = resp.errors?.isNotEmpty ?? false;
    if (didErrorOccur) {
      for (var error in resp.errors!) {
        print('Error creating habit: $error');
      }
      return;
    }

    final id = resp.data?['createHabit']?['id'];
    print('Created habit with ID: $id');
  }
}
