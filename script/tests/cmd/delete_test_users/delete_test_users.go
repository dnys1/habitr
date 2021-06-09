package main

import (
	"backend_tests/common"
	"context"

	"github.com/aws/aws-sdk-go-v2/config"
	flag "github.com/spf13/pflag"
)

var cfg common.Config

func init() {
	common.Flags(&cfg)
}

func main() {
	flag.Parse()

	ctx := context.Background()

	awsCfg, err := config.LoadDefaultConfig(ctx)
	if err != nil {
		common.ExitError(err)
	}

	err = common.DeleteTestUsers(ctx, cfg, awsCfg)
	if err != nil {
		common.ExitError(err)
	}
}
