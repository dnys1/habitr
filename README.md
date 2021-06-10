# habitr

Habit-tracking social network built with AWS Amplify Flutter.

## Features
- Username/password, Login with Amazon sign-in with Cognito
- Bucket storage with S3
- [GraphQL API](amplify/backend/api/habitr/schema.graphql) with AppSync
- REST API with [Go Lambda functions](amplify/backend/function/)
- Custom AppSync [resolvers](amplify/backend/api/habitr/resolvers) and [pipeline functions](amplify/backend/api/habitr/pipelineFunctions)
- [Dart Lambda functions](lambdas/)
- Analytics with Pinpoint
