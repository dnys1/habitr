package main

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

const createUser = `
mutation CreateUser($username: String!, $displayUsername: String) {
	createUser(input: {
	  username: $username,
	  displayUsername: $displayUsername
	}) {
	  username
	}
  }
`

func HandleRequest(ctx context.Context, event *events.CognitoEventUserPoolsPostConfirmation) (*events.CognitoEventUserPoolsPostConfirmation, error) {
	if event.TriggerSource != "PostConfirmation_ConfirmSignUp" {
		log.Printf("Skipping %s event\n", event.TriggerSource)
		return event, nil
	}

	vars := map[string]interface{}{
		"username": event.UserName,
	}

	// Set the username as the display name if signing up with a social sign-in provider.
	if event.Request.UserAttributes["cognito:user_status"] == "EXTERNAL_PROVIDER" {
		vars["displayUsername"] = event.UserName
	}

	bb := &bytes.Buffer{}
	err := json.NewEncoder(bb).Encode(Request{
		Query:         createUser,
		OperationName: "CreateUser",
		Variables:     vars,
	})
	if err != nil {
		log.Printf("Error encoding request: %v\n", err)
		return event, err
	}

	graphQLRequest, err := http.NewRequest(http.MethodPost, graphQLEndpoint, bb)
	if err != nil {
		return event, err
	}
	graphQLRequest.Header.Add("x-api-key", apiKey)

	resp, err := http.DefaultClient.Do(graphQLRequest)
	if err != nil {
		log.Printf("Error sending request: %v\n", err)
		return event, err
	}

	var response struct {
		Data struct {
			CreateUser struct {
				Username string `json:"username"`
			} `json:"createUser"`
		} `json:"data"`
		Errors []Error `json:"errors"`
	}
	err = json.NewDecoder(resp.Body).Decode(&response)
	if err != nil {
		log.Printf("Error decoding response: %v\n", err)
		return nil, err
	}

	if len(response.Errors) > 0 {
		log.Printf("Error creating user: %v\n", response.Errors)
		return nil, fmt.Errorf(response.Errors[0].Message)
	}

	return event, nil
}

var apiKey string
var graphQLEndpoint string

func main() {
	if graphQLEndpoint = os.Getenv("GRAPHQL_API_ENDPOINT"); graphQLEndpoint == "" {
		fmt.Fprintf(os.Stderr, "Must specify GRAPHQL_API_ENDPOINT environment variable")
		os.Exit(1)
	}

	if apiKey = os.Getenv("GRAPHQL_API_KEY"); apiKey == "" {
		fmt.Fprintf(os.Stderr, "Must specify GRAPHQL_API_KEY environment variable")
		os.Exit(1)
	}

	lambda.Start(HandleRequest)
}
