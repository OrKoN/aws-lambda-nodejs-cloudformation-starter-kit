#!/bin/bash

(./FooFunction/build.sh)
# TODO: add other functions here

aws cloudformation create-stack --stack-name=$STACK_NAME \
  --template-body=file://cloudformation.yaml \
  --capabilities CAPABILITY_IAM