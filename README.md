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

# Getting Started

Follow these instructions to create the cloud resources needed to run the app in your local environment. Some responses to CLI prompts are marked "\<default\>", in which cases the name does not matter. In other cases, a name is given (like `habitr` for the GraphQL API), in which case it's important to copy it verbatim.

## Amplify

1. Create a *Login with Amazon* app

Follow the instructions in the **Setup Your Auth Provider** section [here](https://docs.amplify.aws/lib/auth/social_signin_web_ui/q/platform/flutter#setup-your-auth-provider) to setup an Amazon Developer account and create a Login with Amazon app. 

Note down the Client ID and Client Secret.

2. Configure the project

After [configuring](https://docs.amplify.aws/cli/start/install) the Amplify CLI, run `amplify init` from the root of the project.

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
```

3. Configure Auth category

Next, run `amplify add auth` and respond to the following prompts:

```sh
$ amplify add auth

Using service: Cognito, provided by: awscloudformation
 
 The current configured provider is Amazon Cognito. 
 
 Do you want to use the default authentication and security configuration? Default configuration with Social Provider (Federation)
 Warning: you will not be able to edit these selections. 
 How do you want users to be able to sign in? Username
 Do you want to configure advanced settings? No, I am done.
 What domain name prefix do you want to use? <default>
 Enter your redirect signin URI: habitr://
? Do you want to add another redirect signin URI No
 Enter your redirect signout URI: habitr://
? Do you want to add another redirect signout URI No
 Select the social providers you want to configure for your user pool: 
 ◯ Facebook
 ◯ Google
❯◉ Login With Amazon
```

The CLI will ask you for the Client ID and Client Secret from the first step.

```sh
Enter your Amazon App ID for your OAuth flow: <CLIENT_ID>
Enter your Amazon App Secret for your OAuth flow: <CLIENT_SECRET>

Successfully added auth resource <default> locally
```

4. Configure GraphQL API

Next, run `amplify add api` and respond to the following prompts:

```sh
$ amplify add api

? Please select from one of the below mentioned services: GraphQL
? Provide API name: habitr
? Choose the default authorization type for the API API key
? Enter a description for the API key: Admin API Key
? After how many days from now the API key should expire (1-365): 365
? Do you want to configure advanced settings for the GraphQL API Yes, I want to make some additional changes.
? Configure additional auth types? Yes
? Choose the additional authorization types you want to configure for the API 
❯◉ Amazon Cognito User Pool
 ◯ IAM
 ◯ OpenID Connect
Cognito UserPool configuration
Use a Cognito user pool configured as a part of this project.
? Enable conflict detection? Yes
? Do you have an annotated GraphQL schema? Yes
? Provide your schema file path: amplify/backend/api/habitr/schema.graphql

GraphQL schema compiled successfully.
```

5. Replace `CustomResources.json`

Replace `amplify/backend/api/habitr/CustomResources.json` with the contents of [this file](setup/CustomResources.json).

6. Configure `habitrUserExists` Function

Run `amplify add function` and respond to the following prompts:

```sh
$ amplify add function

? Select which capability you want to add: Lambda function (serverless function)
? Provide an AWS Lambda function name: habitrUserExists
? Choose the runtime that you want to use: Go
Only one template found - using Hello World by default.

Available advanced settings:
- Resource access permissions
- Scheduled recurring invocation
- Lambda layers configuration

? Do you want to configure advanced settings? No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserExists/src/event.json No
? Do you want to edit the local lambda function now? No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserExists/src/go.mod No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserExists/src/go.mod No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserExists/src/main.go No

Successfully added resource habitrUserExists locally.
```

7. Configure `habitrUserIdentity` Function

Run `amplify add function` again and respond to the following prompts:

```sh
$ amplify add function

? Select which capability you want to add: Lambda function (serverless function)
? Provide an AWS Lambda function name: habitrUserIdentity
? Choose the runtime that you want to use: Go
Only one template found - using Hello World by default.

Available advanced settings:
- Resource access permissions
- Scheduled recurring invocation
- Lambda layers configuration

? Do you want to configure advanced settings? No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserIdentity/src/event.json No
? Do you want to edit the local lambda function now? No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserIdentity/src/go.mod No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserIdentity/src/go.mod No
? overwrite /Users/nydillon/dev/habitr_new/amplify/backend/function/habitrUserIdentity/src/main.go No

Successfully added resource habitrUserIdentity locally.
```

8. Configure REST API

Run `amplify add api` and choose `REST` this time. We will configure two paths to connect to the functions made in the previous step:

- `/user/exists/` -> `habitrUserExists`
- `/user/identity/` -> `habitrUserIdentity`

```sh
$ amplify add api

? Please select from one of the below mentioned services: REST
? Provide a friendly name for your resource to be used as a label for this category in the project: <default>
? Provide a path (e.g., /book/{isbn}): /user/exists
? Choose a Lambda source Use a Lambda function already added in the current Amplify project
? Choose the Lambda function to invoke by this path habitrUserExists
? Restrict API access No
? Do you want to add another path? Yes
? Provide a path (e.g., /book/{isbn}): /user/identity
? Choose a Lambda source Use a Lambda function already added in the current Amplify project
? Choose the Lambda function to invoke by this path habitrUserIdentity
? Restrict API access Yes
? Who should have access? Authenticated users only
? What kind of access do you want for Authenticated users? read
? Do you want to add another path? No

Successfully added resource <default> locally
```

9. Configure Analytics

Run `amplify add analytics` and respond to the following prompts:

```sh
$ amplify add analytics

? Select an Analytics provider Amazon Pinpoint
? Provide your pinpoint resource name: <default>
Auth configuration is required to allow unauthenticated users, but it is not configured properly.
Adding analytics would add the Auth category to the project if not already added.
? Apps need authorization to send analytics events. Do you want to allow guests and unauthenticated users to send analytics events? (we recommend you allow this when getting s
tarted) No
Authorize only authenticated users to send analytics events. Use "amplify update auth" to modify this behavior.

Successfully updated auth resource locally.
Successfully added resource <default> locally
```

10. Configure Storage

Run `amplify add storage` and respond to the following prompts:

```sh
$ amplify add storage

? Please select from one of the below mentioned services: Content (Images, audio, video, etc.)
? Please provide a friendly name for your resource that will be used to label this category in the project: <default>
? Please provide bucket name: <default>
? Who should have access: Auth users only
? What kind of access do you want for Authenticated users? create/update, read, delete
? Do you want to add a Lambda Trigger for your S3 Bucket? No

Successfully added resource <default> locally
```

11. Check the status

At this point, you can run `amplify status` at this point to see all the resources which will be created.

```sh
$ amplify status

Current Environment: dev

| Category  | Resource name      | Operation | Provider plugin   |
| --------- | ------------------ | --------- | ----------------- |
| Auth      | <default>          | Create    | awscloudformation |
| Api       | habitr             | Create    | awscloudformation |
| Api       | <default>          | Create    | awscloudformation |
| Storage   | <default>          | Create    | awscloudformation |
| Analytics | <default>          | Create    | awscloudformation |
| Function  | habitrUserExists   | Create    | awscloudformation |
| Function  | habitrUserIdentity | Create    | awscloudformation |

```

12. Deploy to the cloud

When you're ready, run `amplify push` to deploy the application to AWS (this may take a while).

```sh
$ amplify push

✔ Successfully pulled backend environment dev from the cloud.

Current Environment: dev

| Category  | Resource name      | Operation | Provider plugin   |
| --------- | ------------------ | --------- | ----------------- |
| Auth      | <default>          | Create    | awscloudformation |
| Api       | habitr             | Create    | awscloudformation |
| Api       | <default>          | Create    | awscloudformation |
| Storage   | <default>          | Create    | awscloudformation |
| Analytics | <default>          | Create    | awscloudformation |
| Function  | habitrUserExists   | Create    | awscloudformation |
| Function  | habitrUserIdentity | Create    | awscloudformation |

? Are you sure you want to continue? Yes
```

13. Configure environment variables

The output of `amplify push` will be several URLs and API keys. It will be important to note these for yourself, but keep them private and outside of version control.

While working with scripts and tooling, it can be helpful to store these values as environment variables. To setup Habitr, only two environment variables are needed, `GRAPHQL_API_ENDPOINT` and `GRAPHQL_API_KEY`.

Create a file in the root of the project called `.env` and add the following to the file, replacing `...` with the values from `amplify push`.

```sh
export GRAPHQL_API_ENDPOINT=...
export GRAPHQL_API_KEY=...
```

## Dart Lambda

As a proof-of-concept, one of our Lambda [functions](lambdas/create_user) was written in Dart. This Lambda will create users in our DynamoDB table, accessed through the GraphQL API, when users sign up for the first time.

Since Dart is not an officially supported Lambda runtime, in order to run a Dart Lambda function, a bit of extra work is required. The [aws-lambda-dart-runtime](https://github.com/awslabs/aws-lambda-dart-runtime) project is used to simplify the effort.

> A full write-up of the Dart Lambda runtime can be found [here](https://aws.amazon.com/blogs/opensource/introducing-a-dart-runtime-for-aws-lambda/).

1. Build the Lambda

To build the Lambda, [Docker](https://www.docker.com/products/docker-desktop) is required to be installed. Lambda supports unofficial runtimes but it requires pre-built executables to do so, and the executables must be made to run on Linux. Dart does not support cross-compiling, so we must use a Linux-based Docker container to build our executable.

Running the following command will generated `lambdas/create_user/build/lambda.zip`

```sh
$ make lambdas
```

2. Deploy the Lambda

Log in to the AWS Console and navigate to **Lambda**. Click on **Create Function**.

![AWS Console Lambda](setup/lambda.png)

Make sure `Author from scratch` is selected.

To follow the naming convention for Amplify, we will call our function `habitrCreateUser-{env}`. Since the default environment is `dev` for this project, we'll call the Lambda `habitrCreateUser-dev`.

For the **Runtime** field, scroll to the bottom and select `Provide your own bootstrap on Amazon Linux 2`.

The default execution role and Advanced Settings are okay as-is. Click **Create function**.

Under the **Code** tab, click `Upload from` > `.zip file` and choose the zip file created in the previous step.

Lastly, we need to provide the Lambda with the necessary environment variables (the same two GraphQL variables from before).

Under the **Configuration** tab, click `Environment variables`, then `Edit`. Add `GRAPHQL_API_ENDPOINT` and `GRAPHQL_API_KEY`, corresponding to the values from `amplify push`.

3. Configure the Cognito Trigger

The final step is to configure the Lambda to respond to Cognito events.

Navigate to **Cognito** in the AWS Console.

![AWS Console Lambda](setup/cognito.jpg)

## Flutter

Run the following commands from the root of the project:

1. `source .env` (created in step #13)
2. `flutter pub get`
3. `flutter pub run build_runner build --delete-conflicting-outputs`
4. `make models`

## Run the App

If everything went well in the previous steps, you should now be able to run the Habitr project! 🎉