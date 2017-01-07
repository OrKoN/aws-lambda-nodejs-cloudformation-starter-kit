#!/bin/bash

FooFunctionMD5=$(./FooFunction/build.sh)
# TODO: add other functions here

aws cloudformation update-stack \
  --stack-name=$STACK_NAME \
  --template-body=file://cloudformation.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters \
  ParameterKey=FooFunctionMD5,ParameterValue=$FooFunctionMD5
  # TODO: add md5 hash parameters of other functions here

aws cloudformation wait stack-update-complete --stack-name $STACK_NAME