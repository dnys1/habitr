#!/bin/bash
set -e
IFS='|'

# Create the `default` profile in CI/CD contexts, since the Amplify CLI's 
# headless mode does not support session tokens.
if [[ -n $CI ]]; then
cat <<EOF > ~/.aws/config
[default]
region=$AWS_REGION
output=json
EOF

cat <<EOF > ~/.aws/credentials
[default]
aws_access_key_id=$AWS_ACCESS_KEY_ID
aws_secret_access_key=$AWS_SECRET_ACCESS_KEY
aws_session_token=$AWS_SESSION_TOKEN
EOF
fi

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"
AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"general\",\
\"useProfile\":true,\
\"profileName\":\"default\",\
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
