//ignore_for_file:avoid_print
import 'dart:io';
import 'dart:math';

import 'package:args/args.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:gql/language.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:habitr_models/habitr_models.dart';

Future<void> main(List<String> args) async {
  var graphQLEndpoint = Platform.environment['GRAPHQL_API_ENDPOINT'];
  var apiKey = Platform.environment['GRAPHQL_API_KEY'];

  final parser = ArgParser();

  parser.addOption(
    'user',
    abbr: 'u',
    help: 'The Cognito user to execute operations on behalf of.',
    valueHelp: 'USER',
    mandatory: true,
  );

  if (graphQLEndpoint == null || apiKey == null) {
    parser.addOption(
      'endpoint',
      abbr: 'e',
      help: 'The endpoint for your GraphQL API.',
      valueHelp: 'GRAPHQL_API_ENDPOINT',
      mandatory: true,
    );

    parser.addOption(
      'api-key',
      abbr: 'k',
      help: 'The API key for your GraphQL endpoint.',
      valueHelp: 'GRAPHQL_API_KEY',
      mandatory: true,
    );
  }

  final values = parser.parse(args);

  graphQLEndpoint ??= values['endpoint'] as String;
  apiKey ??= values['api-key'] as String;

  final user = values['user'] as String;

  final link = HttpLink(
    graphQLEndpoint,
    defaultHeaders: {
      'x-api-key': apiKey,
    },
  );

  return seedDB(link, user: user);
}

class GCreateHabit extends Operation {
  GCreateHabit()
      : super(
          document: parseString(r'''
      mutation CreateHabit(
        $tagline: String!, 
        $category: Category!, 
        $owner: String!,
        $ups: Int!, 
        $downs: Int!
      ) {
        createHabit(input: {
          tagline: $tagline,
          category: $category,
          owner: $owner,
          ups: $ups,
          downs: $downs
        }) {
          id
        }
      }
    '''),
        );
}

Future<void> seedDB(HttpLink link, {required String user}) async {
  final random = Random();
  final categories = GCategory.values;

  for (var i = 0; i < 20; i++) {
    final category = categories.elementAt(random.nextInt(categories.length));
    final resp = await link
        .request(
          Request(
            operation: GCreateHabit(),
            variables: <String, dynamic>{
              'tagline': lorem(paragraphs: 1, words: 10),
              'category': category.name,
              'ups': random.nextInt(10),
              'downs': random.nextInt(10),
              'owner': user,
            },
          ),
        )
        .first;

    final didErrorOccur = resp.errors?.isNotEmpty ?? false;
    if (didErrorOccur) {
      for (final error in resp.errors!) {
        print('Error creating habit: $error');
      }
      return;
    }

    final id = (resp.data?['createHabit'] as Map?)?['id'] as String?;
    print('Created habit with ID: $id');
  }
}
