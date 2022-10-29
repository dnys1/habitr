import * as cdk from "aws-cdk-lib";
import { Construct } from "constructs";
import * as codepipeline from "aws-cdk-lib/aws-codepipeline";
import * as actions from "aws-cdk-lib/aws-codepipeline-actions";
import * as codebuild from "aws-cdk-lib/aws-codebuild";
import * as s3 from "aws-cdk-lib/aws-s3";
import { RemovalPolicy, SecretValue } from "aws-cdk-lib";

export class BackendStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    const bucket = new s3.Bucket(this, "DeploymentBucket", {
      bucketName: 'habitr-deployment',
      enforceSSL: true,
      removalPolicy: RemovalPolicy.DESTROY,
      autoDeleteObjects: true,
    });

    const pipeline = new codepipeline.Pipeline(this, "DeployPipeline", {
      pipelineName: "HabitrDeploy",
      crossAccountKeys: false,
    });
    const project = new codebuild.PipelineProject(this, "HabitrProject");

    const sourceOutput = new codepipeline.Artifact();
    const sourceAction = new actions.GitHubSourceAction({
      actionName: "GitHub_Source",
      owner: "dnys1",
      repo: "habitr",
      output: sourceOutput,
      branch: "pipeline",
      oauthToken: SecretValue.secretsManager("habitr-github-token"),
    });
    const sourceStage = pipeline.addStage({
      stageName: "Source",
      actions: [sourceAction],
    });
    const testAction = new actions.CodeBuildAction({
      actionName: "Test",
      project,
      input: sourceOutput,
      type: actions.CodeBuildActionType.TEST,
    });
    const testStage = pipeline.addStage({
      stageName: "Test",
      actions: [testAction],
    });

    const buildOutput = new codepipeline.Artifact();
    const buildAction = new actions.CodeBuildAction({
      actionName: "Build",
      project,
      input: sourceOutput,
      outputs: [buildOutput],
    });
    const buildStage = pipeline.addStage({
      stageName: "Build",
      actions: [buildAction],
    });

    const deployAction = new actions.S3DeployAction({
      actionName: 'Deploy',
      bucket,
      input: buildOutput,
    });
    const deployStage = pipeline.addStage({
      stageName: 'Deploy',
      actions: [deployAction],
    });
  }
}
