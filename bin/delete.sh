#!/bin/bash

aws cloudformation delete-stack \
  --stack-name=$STACK_NAME
