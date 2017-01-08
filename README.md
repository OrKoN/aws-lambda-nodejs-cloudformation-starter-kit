# AWS Lambda CloudFormation NodeJS Starter

- uses the official AWS CLI and CloudFormation to manage AWS resources
- no other dependencies are required
- very basic bash scripts, easy to learn and change
- source code of Lambda functions published on S3


## Prerequisites

You need an AWS account and the AWS CLI configured:

- [Installing the AWS Command Line Interface](http://docs.aws.amazon.com/cli/latest/userguide/installing.html)
- [Configuring the AWS Command Line Interface](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)

## Installation

```sh
git clone git@github.com:OrKoN/aws-lambda-nodejs-cloudformation-starter-kit.git lambda-starter
cd lambda-starter
```

Modify the code in FooFunction/index.js or create new functions.


## Deploying the project

```sh
npm run create-stack
```

## Updating the project

```sh
npm run update-stack
```

## Deleting the project

```sh
npm run delete-stack
```

## Adding New Functions

To add a new function you need to create a new folder where the function will be located and add references to the new function wherever you find a TODO comment in the shell scripts. Additionally, you need to create a `build.sh` which will build your function and output its version. Also the function resource and its role need to be added to the `cloudformation.yaml`.


## More Info

Please read this blog post of mine providing more details about this project: [Introducing a Simple AWS Lambda Starter Kit for NodeJS Using CloudFormation](https://60devs.com/aws-lambda-starter-kit-using-cloudformation-nodejs.html).
