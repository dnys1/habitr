#!/bin/bash
set -e
IFS='|'

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"
AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"general\",\
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