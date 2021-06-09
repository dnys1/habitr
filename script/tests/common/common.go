package common

import (
	"context"
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/service/cognitoidentityprovider"
	"github.com/aws/aws-sdk-go-v2/service/cognitoidentityprovider/types"
	"github.com/aws/aws-sdk-go-v2/service/dynamodb"
	dynamotypes "github.com/aws/aws-sdk-go-v2/service/dynamodb/types"
	"github.com/shurcooL/graphql"
	flag "github.com/spf13/pflag"
)

const (
	DefaultGroupName = "test"
	DefaultPassword  = "password123abc"
)

type User struct {
	Username    string
	AccessToken string
	IdToken     string
}

type Config struct {
	AppClientId       string
	UserPoolId        string
	GraphQLEndpoint   string
	GraphQLApiKey     string
	NumWorkers        int
	DynamoDbTableName string

	HabitId string
}

func Flags(cfg *Config) {
	flag.StringVarP(&cfg.UserPoolId, "user-pool", "u", "", "Cognito user pool")
	flag.StringVarP(&cfg.AppClientId, "client-id", "c", "", "Cognito User Pool App Client ID")
	flag.StringVarP(&cfg.GraphQLEndpoint, "graphql-endpoint", "e", "", "GraphQL endpoint")
	flag.StringVarP(&cfg.GraphQLApiKey, "graphql-api-key", "k", "", "GraphQL API Key")
	flag.IntVarP(&cfg.NumWorkers, "num-workers", "n", 0, "Number of workers to create")
	flag.StringVarP(&cfg.HabitId, "habit-id", "h", "", "Habit ID for voting")
	flag.StringVarP(&cfg.DynamoDbTableName, "dynamo-db-table", "d", "", "Dynamo DB users table")
}

func ExitError(err error) {
	fmt.Fprintln(os.Stderr, err.Error())
	os.Exit(1)
}

func NewGraphQLClient(cfg Config) *graphql.Client {
	httpClient := *http.DefaultClient
	rt := WithHeader(http.DefaultTransport)
	rt.Set("x-api-key", cfg.GraphQLApiKey)
	httpClient.Transport = rt
	return graphql.NewClient(cfg.GraphQLEndpoint, &httpClient)
}

func CreateTestUsers(ctx context.Context, cfg Config, awsCfg aws.Config) error {
	cognitoClient := cognitoidentityprovider.NewFromConfig(awsCfg)

	groupsOut, err := cognitoClient.ListGroups(ctx, &cognitoidentityprovider.ListGroupsInput{
		UserPoolId: &cfg.UserPoolId,
	})
	if err != nil {
		return err
	}
	var found bool
	for _, group := range groupsOut.Groups {
		if *group.GroupName == DefaultGroupName {
			found = true
		}
	}

	if !found {
		_, err = cognitoClient.CreateGroup(ctx, &cognitoidentityprovider.CreateGroupInput{
			UserPoolId: &cfg.UserPoolId,
			GroupName:  aws.String(DefaultGroupName),
		})
		if err != nil {
			return err
		}
	}

	graphqlClient := NewGraphQLClient(cfg)

	for i := 0; i < cfg.NumWorkers; i++ {
		username := fmt.Sprintf("test%d", i)

		_, err := cognitoClient.AdminCreateUser(ctx, &cognitoidentityprovider.AdminCreateUserInput{
			UserPoolId:        &cfg.UserPoolId,
			Username:          &username,
			TemporaryPassword: aws.String(DefaultPassword),
			UserAttributes: []types.AttributeType{
				{
					Name:  aws.String("email"),
					Value: aws.String("nydillon@amazon.com"),
				},
			},
		})
		if err != nil {
			return err
		}

		log.Printf("Creating user %d...\n", i)

		_, err = cognitoClient.AdminAddUserToGroup(ctx, &cognitoidentityprovider.AdminAddUserToGroupInput{
			GroupName:  aws.String(DefaultGroupName),
			UserPoolId: &cfg.UserPoolId,
			Username:   &username,
		})
		if err != nil {
			return err
		}

		var mutation struct {
			CreateUser struct {
				Username graphql.String
			} `graphql:"createUser(input: {username: $username})"`
		}
		err = graphqlClient.Mutate(ctx, &mutation, map[string]interface{}{
			"username": graphql.String(username),
		})
		if err != nil {
			return err
		}
	}

	return nil
}

func LoginTestUsers(ctx context.Context, cfg Config, awsCfg aws.Config) ([]*User, error) {
	cognitoClient := cognitoidentityprovider.NewFromConfig(awsCfg)

	resCh := make(chan *User)
	errCh := make(chan error)
	semCh := make(chan struct{}, 45)

	for i := 0; i < cfg.NumWorkers; i++ {
		go func(i int) {
			defer func() {
				<-semCh
			}()
			semCh <- struct{}{}
			username := fmt.Sprintf("test%d", i)
			err := loginUser(cognitoClient, ctx, cfg, username, resCh)
			if err != nil {
				errCh <- err
			}
		}(i)
	}

	var users []*User
	for i := 0; i < cfg.NumWorkers; i++ {
		select {
		case user := <-resCh:
			users = append(users, user)
		case err := <-errCh:
			log.Printf("Error logging in user: %v\n", err)
		}
	}

	return users, nil
}

func loginUser(cognitoClient *cognitoidentityprovider.Client, ctx context.Context, cfg Config, username string, resCh chan *User) error {
	initAuthOut, err := cognitoClient.AdminInitiateAuth(ctx, &cognitoidentityprovider.AdminInitiateAuthInput{
		AuthFlow:   types.AuthFlowTypeAdminUserPasswordAuth,
		ClientId:   &cfg.AppClientId,
		UserPoolId: &cfg.UserPoolId,
		AuthParameters: map[string]string{
			"USERNAME": username,
			"PASSWORD": DefaultPassword,
		},
	})
	if err != nil {
		return err
	}

	if initAuthOut.ChallengeName != "" {
		authChallengeOut, err := cognitoClient.AdminRespondToAuthChallenge(ctx, &cognitoidentityprovider.AdminRespondToAuthChallengeInput{
			ChallengeName: initAuthOut.ChallengeName,
			ClientId:      &cfg.AppClientId,
			UserPoolId:    &cfg.UserPoolId,
			Session:       initAuthOut.Session,
			ChallengeResponses: map[string]string{
				"USERNAME":     username,
				"NEW_PASSWORD": DefaultPassword,
			},
		})
		if err != nil {
			return err
		}

		user := &User{
			Username:    username,
			AccessToken: *authChallengeOut.AuthenticationResult.AccessToken,
			IdToken:     *authChallengeOut.AuthenticationResult.IdToken,
		}

		resCh <- user
		return nil
	}

	user := &User{
		Username:    username,
		AccessToken: *initAuthOut.AuthenticationResult.AccessToken,
		IdToken:     *initAuthOut.AuthenticationResult.IdToken,
	}
	resCh <- user
	return nil
}

func DeleteTestUsers(ctx context.Context, cfg Config, awsCfg aws.Config) error {
	cognitoClient := cognitoidentityprovider.NewFromConfig(awsCfg)
	dynamoClient := dynamodb.NewFromConfig(awsCfg)

	for i := 0; i < cfg.NumWorkers; i++ {
		username := fmt.Sprintf("test%d", i)

		_, err := cognitoClient.AdminDeleteUser(ctx, &cognitoidentityprovider.AdminDeleteUserInput{
			UserPoolId: &cfg.UserPoolId,
			Username:   &username,
		})
		if err != nil {
			return err
		}

		_, err = dynamoClient.DeleteItem(ctx, &dynamodb.DeleteItemInput{
			TableName: &cfg.DynamoDbTableName,
			Key: map[string]dynamotypes.AttributeValue{
				"username": &dynamotypes.AttributeValueMemberS{
					Value: username,
				},
			},
		})
		if err != nil {
			return err
		}
	}

	return nil
}
