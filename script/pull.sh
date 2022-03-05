#!/bin/bash
# 
# This script follows the recommendations provided in the CLI Headless Mode docs:
# https://docs.amplify.aws/cli/usage/headless/#amplify-pull-parameters
#
# It expects the following environment variables to be set:
#
#   - AWS_REGION                    # The region where you deployed the Amplify project
#   - AMPLIFY_APP_ID                # The app ID of the Amplify project
#   - AMPLIFY_ENV_NAME              # The name of the Amplify environment to pull
#

set -e
IFS='|'

#
# Create the `cicd` profile in CI/CD contexts, since the Amplify CLI's 
# headless mode does not support session tokens.
# 
# Per https://github.com/aws-amplify/amplify-cli/issues/7642#issuecomment-875881203
# this is the officially correct way to use a session token.
#
if [[ -n $CI && -n $AWS_ACCESS_KEY_ID && -n $AWS_SECRET_ACCESS_KEY ]]; then

mkdir -p ~/.aws

AWS_PROFILE=cicd
CONFIG_PATH=~/.aws/config
CREDENTIALS_PATH=~/.aws/credentials

cat <<EOF > $CONFIG_PATH
[$AWS_PROFILE]
region=$AWS_REGION
output=json
EOF

cat <<EOF > $CREDENTIALS_PATH
[$AWS_PROFILE]
aws_access_key_id=$AWS_ACCESS_KEY_ID
aws_secret_access_key=$AWS_SECRET_ACCESS_KEY
EOF

# While it's recommended to use temporary credentials in CI/CD, it's
# not required to run this script.
if [[ -n $AWS_SESSION_TOKEN ]]; then
    echo "aws_session_token=$AWS_SESSION_TOKEN" >> $CREDENTIALS_PATH
fi

fi

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"
AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"general\",\
\"useProfile\":true,\
\"profileName\":\"${AWS_PROFILE:-default}\",\
\"region\":\"$AWS_REGION\"\
}"
AMPLIFY="{\
\"appId\":\"$AMPLIFY_APP_ID\",\
\"envName\":\"$AMPLIFY_ENV_NAME\",\
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
    # Dump CLI logs
    cat ~/.amplify/logs/*.log >&2
    echo "Could not pull Amplify project" >&2
    exit 1
fi
