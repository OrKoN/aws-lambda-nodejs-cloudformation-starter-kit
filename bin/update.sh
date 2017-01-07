#!/bin/bash

FooFunctionVersion=$(./FooFunction/build.sh)
# TODO: add other functions here

aws cloudformation update-stack \
  --stack-name=$STACK_NAME \
  --template-body=file://cloudformation.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters \
  ParameterKey=FooFunctionVersion,ParameterValue=$FooFunctionVersion
  # TODO: add version parameters of other functions here

aws cloudformation wait stack-update-complete --stack-name $STACK_NAME