package main

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"os"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

type UsernameExistsRequest struct {
	Username string `json:"username"`
}

type UsernameExistsResponse struct {
	Exists bool `json:"exists"`
}

const usernameExists = `
query SearchUsers($username: String!) {
	searchUsers(filter: { 
	  or: [
		{ username: { eq: $username } },
		{ displayUsername: { eq: $username } }
	  ]
	}) {
	  total
	}
  }
`

func HandleRequest(ctx context.Context, apiGatewayEvent *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	body := apiGatewayEvent.Body
	var req UsernameExistsRequest
	err := json.Unmarshal([]byte(body), &req)
	if err != nil {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusBadRequest,
			Body:       err.Error(),
		}, err
	}

	if req.Username == "" {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusBadRequest,
			Body:       "Must specify a username",
		}, errors.New("must specify a username")
	}
	bb := &bytes.Buffer{}
	err = json.NewEncoder(bb).Encode(Request{
		Query:         usernameExists,
		OperationName: "SearchUsers",
		Variables: map[string]interface{}{
			"username": req.Username,
		},
	})
	if err != nil {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       err.Error(),
		}, err
	}

	graphQLRequest, err := http.NewRequest(http.MethodPost, graphQLEndpoint, bb)
	if err != nil {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       err.Error(),
		}, err
	}
	graphQLRequest.Header.Add("x-api-key", apiKey)

	resp, err := http.DefaultClient.Do(graphQLRequest)
	if err != nil {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       err.Error(),
		}, err
	}

	var response struct {
		Data struct {
			SearchUsers struct {
				Total int `json:"total"`
			} `json:"searchUsers"`
		} `json:"data"`
		Errors []Error `json:"errors"`
	}
	err = json.NewDecoder(resp.Body).Decode(&response)
	if err != nil {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       err.Error(),
		}, err
	}

	if len(response.Errors) > 0 {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       response.Errors[0].Message,
		}, fmt.Errorf(response.Errors[0].Message)
	}

	reply := UsernameExistsResponse{
		Exists: response.Data.SearchUsers.Total != 0,
	}
	replyJson, err := json.Marshal(reply)
	if err != nil {
		return &events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError,
			Body:       err.Error(),
		}, err
	}

	return &events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
		Body:       string(replyJson),
	}, nil
}

var apiKey string
var graphQLEndpoint string

func main() {
	if graphQLEndpoint = os.Getenv("GRAPHQL_ENDPOINT"); graphQLEndpoint == "" {
		fmt.Fprintf(os.Stderr, "Must specify GRAPHQL_ENDPOINT environment variable")
		os.Exit(1)
	}

	if apiKey = os.Getenv("GRAPHQL_API_KEY"); apiKey == "" {
		fmt.Fprintf(os.Stderr, "Must specify GRAPHQL_API_KEY environment variable")
		os.Exit(1)
	}

	lambda.Start(HandleRequest)
}
