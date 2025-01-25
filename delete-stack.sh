#!/bin/bash

STACK_NAME="TomcatStack"
REGION="us-east-1"

aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region $REGION
