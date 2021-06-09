package main

import (
	"backend_tests/common"
	"context"
	"errors"
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"os"
	"sync/atomic"
	"time"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/dynamodb"
	"github.com/aws/aws-sdk-go-v2/service/dynamodb/types"
	"github.com/shurcooL/graphql"
	flag "github.com/spf13/pflag"
	"golang.org/x/sync/errgroup"
)

var cfg common.Config

var (
	upsCounter   int32
	downsCounter int32
)

func init() {
	common.Flags(&cfg)

	log.SetFlags(log.Lmicroseconds | log.LstdFlags)
}

func main() {
	flag.Parse()

	if cfg.UserPoolId == "" || cfg.GraphQLApiKey == "" || cfg.GraphQLEndpoint == "" || cfg.HabitId == "" {
		flag.Usage()
		common.ExitError(errors.New("missing parameter"))
	}

	ctx := context.Background()

	awsCfg, err := config.LoadDefaultConfig(ctx)
	if err != nil {
		common.ExitError(err)
	}

	log.Println("Logging in users...")
	users, err := common.LoginTestUsers(ctx, cfg, awsCfg)
	if err != nil {
		common.ExitError(err)
	}
	log.Println("Succesfully logged in users...")

	graphqlClient := common.NewGraphQLClient(cfg)

	type getHabit struct {
		GetHabit struct {
			Ups   graphql.Int
			Downs graphql.Int
		} `graphql:"getHabit(id: $habitId)"`
	}
	var before getHabit
	err = graphqlClient.Query(ctx, &before, map[string]interface{}{
		"habitId": graphql.ID(cfg.HabitId),
	})
	if err != nil {
		common.ExitError(err)
	}

	log.Printf("Votes Before: (Ups %d Downs %d)\n", before.GetHabit.Ups, before.GetHabit.Downs)

	var clients []*graphql.Client
	for _, user := range users {
		httpClient := *http.DefaultClient
		rt := common.WithHeader(http.DefaultTransport)
		rt.Set("Authorization", user.IdToken)
		httpClient.Transport = rt

		client := graphql.NewClient(cfg.GraphQLEndpoint, &httpClient)

		clients = append(clients, client)
	}

	start := time.Now()
	err = spawnVoters(ctx, cfg, clients)
	end := time.Now()

	if err != nil {
		common.ExitError(err)
	}

	delta := end.Sub(start)

	log.Printf("Voting completed in %d milliseconds. %d votes cast.\n", delta.Milliseconds(), cfg.NumWorkers)

	var after getHabit
	err = graphqlClient.Query(ctx, &after, map[string]interface{}{
		"habitId": graphql.ID(cfg.HabitId),
	})
	if err != nil {
		common.ExitError(err)
	}

	expectedUps := int32(before.GetHabit.Ups) + upsCounter
	expectedDowns := int32(before.GetHabit.Downs) + downsCounter

	gotUps := after.GetHabit.Ups
	gotDowns := after.GetHabit.Downs

	log.Printf("Votes After: (Ups %d Downs %d)\n", gotUps, gotDowns)
	log.Printf("Expected: (Ups %d Downs %d)\n", expectedUps, expectedDowns)
	if expectedUps == int32(gotUps) && expectedDowns == int32(gotDowns) {
		log.Println("Success!")
	} else {
		fmt.Fprintf(os.Stderr, "Error! Votes do not match.")
	}

	log.Println("Resetting votes...")
	err = reset(awsCfg)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error resetting vote totals: %v\n", err)
	}
	log.Println("Successfully reset totals!")
}

func spawnVoters(ctx context.Context, cfg common.Config, clients []*graphql.Client) error {
	eg := new(errgroup.Group)

	for _, client := range clients {
		client := client
		eg.Go(func() error {
			upvote := rand.Intn(2)
			if upvote == 1 {
				defer atomic.AddInt32(&upsCounter, 1)
				return vote(cfg, client, true)
			} else {
				defer atomic.AddInt32(&downsCounter, 1)
				return vote(cfg, client, false)
			}
		})
	}

	return eg.Wait()
}

func vote(cfg common.Config, client *graphql.Client, upvote bool) error {
	var mutation struct {
		Vote struct {
			Habit struct {
				ID       graphql.ID
				Tagline  graphql.String
				Category graphql.String
				Ups      graphql.Int
				Downs    graphql.Int
			}
			User struct {
				Username        graphql.String
				UpvotedHabits   []graphql.String
				DownvotedHabits []graphql.String
			}
		} `graphql:"vote(habitId: $habitId, type: $type)"`
	}
	var voteType string
	if upvote {
		voteType = "upvote"
	} else {
		voteType = "downvote"
	}
	err := client.Mutate(context.Background(), &mutation, map[string]interface{}{
		"habitId": graphql.ID(cfg.HabitId),
		"type":    VoteType(voteType),
	})

	return err
}

func reset(awsCfg aws.Config) error {
	dynamoClient := dynamodb.NewFromConfig(awsCfg)

	ctx := context.Background()

	for i := 0; i < cfg.NumWorkers; i++ {
		username := fmt.Sprintf("test%d", i)
		_, err := dynamoClient.UpdateItem(ctx, &dynamodb.UpdateItemInput{
			TableName: &cfg.DynamoDbTableName,
			Key: map[string]types.AttributeValue{
				"username": &types.AttributeValueMemberS{
					Value: username,
				},
			},
			UpdateExpression: aws.String("DELETE upvotedHabits :habitId, downvotedHabits :habitId"),
			ExpressionAttributeValues: map[string]types.AttributeValue{
				":habitId": &types.AttributeValueMemberSS{
					Value: []string{cfg.HabitId},
				},
			},
		})
		if err != nil {
			return err
		}
	}

	return nil
}

type VoteType string
