#!/bin/bash

aws cloudformation delete-stack \
  --stack-name=$STACK_NAME

echo "Deleting..."

aws cloudformation wait stack-delete-complete --stack-name $STACK_NAME