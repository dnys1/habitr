# habitr

Habit-tracking social network built with AWS Amplify Flutter.

- [habitr](#habitr)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Amplify](#amplify)
  - [Flutter](#flutter)
  - [Run the App](#run-the-app)
- [Making Changes](#making-changes)
  - [GraphQL Schema](#graphql-schema)
- [Troubleshooting](#troubleshooting)
  - [Logging (CloudWatch)](#logging-cloudwatch)
    - [API (GraphQL)](#api-graphql)
    - [API (REST)](#api-rest)
    - [Functions](#functions)

# Features
- Username/password, Login with Amazon sign-in with Cognito
- Bucket storage with S3
- [GraphQL API](amplify/backend/api/habitr/schema.graphql) with AppSync
- REST API with [Go Lambda functions](amplify/backend/function/)
- Custom AppSync [resolvers](amplify/backend/api/habitr/resolvers) and [pipeline functions](amplify/backend/api/habitr/pipelineFunctions)
- Analytics with Pinpoint

# Getting Started

Follow these instructions to create the cloud resources needed to run the app in your local environment.

## Amplify

1. Create a *Login with Amazon* app

Follow the instructions in the **Setup Your Auth Provider** section [here](https://docs.amplify.aws/lib/auth/social_signin_web_ui/q/platform/flutter#setup-your-auth-provider) to setup an Amazon Developer account and create a Login with Amazon app. 

Note down the Client ID and Client Secret.

2. Configure the project

After [configuring](https://docs.amplify.aws/cli/start/install) the Amplify CLI, run `amplify init` from the root of the project. You'll be prompted for your Amazon Client ID and Client Secret from the previous step.

```sh
$ amplify init

Note: It is recommended to run this command from the root of your app directory
? Enter a name for the environment dev
? Choose your default editor: Visual Studio Code
Using default provider  awscloudformation
? Select the authentication method you want to use: AWS profile

For more information on AWS Profiles, see:
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html

? Please choose the profile you want to use <AWS_PROFILE>
Adding backend environment dev to AWS Amplify Console app: <APP_ID>
⠦ Initializing project in the cloud...

✔ Successfully created initial AWS cloud resources for deployments.
✔ Initialized provider successfully.
 
 Enter your Amazon App ID for your OAuth flow:  <AMAZON_APP_ID>
 Enter your Amazon App Secret for your OAuth flow:  <AMAZON_APP_SECRET>

Initialized your environment successfully.

Your project has been successfully initialized and connected to the cloud!
```

3. Push changes to cloud

Once the project is initialized, run `amplify push` to see the resources being added and enter `y` to deploy them to your cloud.

```sh
$ amplify push
✔ Successfully pulled backend environment dev from the cloud.

    Current Environment: dev
    
┌───────────┬────────────────────────────────┬───────────┬───────────────────┐
│ Category  │ Resource name                  │ Operation │ Provider plugin   │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Auth      │ habitr672b9506                 │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Auth      │ userPoolGroups                 │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Api       │ habitr                         │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Api       │ habitrAPI                      │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Function  │ habitrUserExists               │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Function  │ habitrUserIdentity             │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Function  │ habitr672b9506PostConfirmation │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Analytics │ habitr                         │ Create    │ awscloudformation │
├───────────┼────────────────────────────────┼───────────┼───────────────────┤
│ Storage   │ s346bfaba6                     │ Create    │ awscloudformation │
└───────────┴────────────────────────────────┴───────────┴───────────────────┘
? Are you sure you want to continue? Yes


✔ All resources are updated in the cloud
```

## Flutter

Run the following commands from the root of the project:

1. `flutter pub get`
2. `make models`

## Run the App

If everything went well in the previous steps, you should now be able to run the Habitr project! 🎉

To create some dummy habit data, you can use the `seed_habits.dart` program under the `scripts` folder. First, run the app and sign up for a user account, then run the script like so:

```sh
$ dart scripts/seed_habits.dart \
> --user=<USERNAME> \
> --endpoint=<GRAPHQL_API_ENDPOINT> \
> --api-key=<GRAPHQL_API_KEY>
```

# Making Changes

## GraphQL Schema

Making changes to the GraphQL schema is a three-step process. First, edit the [schema file](amplify/backend/api/habitr/schema.graphql). Then, run `amplify push` to deploy changes. Finally, run `make schema` from the root of the project to regenerate the model files.

> Note: Make sure to have `GRAPHQL_API_ENDPOINT` and `GRAPHQL_API_KEY` environment variables exported in your shell before running `make schema`.

# Troubleshooting

Amplify is primarily a wrapper around AWS and an orchestrator of many AWS resources. Each category spans multiple components of AWS, so troubleshooting can quickly mean understanding the underlying AWS services. In general, the following mapping will give you a starting point for understanding the relationships between Amplify categories and their raw underpinnings.

- All Categories
    - IAM
    - CloudWatch
- Auth (Cognito)
    - Cognito User Pools
    - Cognito Identity Pools
    - SES
- API (GraphQL)
    - AppSync
    - DynamoDB
- API (REST)
    - API Gateway
    - Lambda
- Analytics (Pinpoint)
    - Pinpoint
- Storage (S3)
    - S3

## Logging (CloudWatch)

One of the best tools for troubleshooting your stack is CloudWatch. Logging is enabled by default for many resources. For others, it requires a bit of manual setup and can incur some additional charges.

### API (GraphQL)

> Logs **are not** enabled by default.

If you go to **AppSync** in the AWS Console, you'll see the GraphQL API you created during setup. Click on that, then navigate to `Settings`. Scroll to `Logging` and click **Enable Logs** to have logs start streaming to CloudWatch.

For debugging custom resolvers, it is helpful to enable `Include verbose content` and set the `Field resolver log level` to **All**. This will log all steps performed in generating mapping templates and important debug information.

Remember to click **Save** when you're done.

### API (REST)

> Logs **are not** enabled by default.

Navigate to **IAM** in the AWS Console and select `Roles`. Click on **Create role**. Under `Choose a use case`, pick **API Gateway**. Click **Next**, then **Next**.

For the `Role name`, choose something descriptive like `habitr-api-gateway-logging` and click **Create role**. Find the new role in the list and click it's name. Copy the `Role ARN`.

Navigate to **API Gateway** in the AWS Console. Select your REST API, then click the global `Settings` link on the left-hand side. Paste the Role ARN from before and click **Save**.

On the left-hand side, under your API name, click `Stages` then select `dev` in the list. Click the `Logs/Tracing` tab and check **Enable CloudWatch Logs**. Change the Log level to your preference, and select `Log full requests/response data` if you'd like to see the full input and output to your functions. Click **Save Changes**.

### Functions

> Logs **are** enabled by default.

Navigate to **CloudWatch** in the AWS Console to see logs for your Lambdas/Functions.