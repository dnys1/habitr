#!/bin/bash
# 
# This script follows the recommendations provided in the CLI Headless Mode docs:
# https://docs.amplify.aws/cli/usage/headless/#amplify-pull-parameters
#
# It expects the following environment variables to be set:
#   - AWS_ACCESS_KEY_ID
#   - AWS_SECRET_ACCESS_KEY
#   - AWS_REGION
#   - AMPLIFY_APP_ID
#   - AMPLIFY_ENV
#
# If AWS_SESSION_TOKEN is set, it will be picked up by the CLI and does not need to
# be explicitly passed to the config, unlike AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY.

set -e
IFS='|'

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"
AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":false,\
\"accessKeyId\":\"$AWS_ACCESS_KEY_ID\",\
\"secretAccessKey\":\"$AWS_SECRET_ACCESS_KEY\",\
\"region\":\"$AWS_REGION\"\
}"
AMPLIFY="{\
\"projectName\":\"habitr\",\
\"appId\":\"$AMPLIFY_APP_ID\",\
\"envName\":\"$AMPLIFY_ENV\",\
\"defaultEditor\":\"code\"\
}"
FRONTEND="{\
\"frontend\":\"flutter\",\
\"config\":$FLUTTERCONFIG\
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify pull \
--amplify $AMPLIFY \
--frontend $FRONTEND \
--providers $PROVIDERS \
--yes

if [[ ! -e "lib/amplifyconfiguration.dart" ]]; then
    echo "Could not pull Amplify project" >&2
    exit 1
fi