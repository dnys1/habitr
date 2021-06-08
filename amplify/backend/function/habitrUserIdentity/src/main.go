package main

import (
	"context"
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func HandleRequest(ctx context.Context, apiGatewayEvent *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	identity := apiGatewayEvent.RequestContext.Identity

	return &events.APIGatewayProxyResponse{
		StatusCode: 200,
		Body:       fmt.Sprintf(`{ "identityId": "%s" }`, identity.CognitoIdentityID),
	}, nil
}

func main() {
	lambda.Start(HandleRequest)
}
