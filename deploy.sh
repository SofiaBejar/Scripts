#!/bin/bash

STACK_NAME="TomcatStack"
REGION="us-east-1"
TEMPLATE_FILE="2-instance.yaml"
INSTANCE_NAME="Tomcat"
INSTANCE_SIZE="t2.small"  
INSTANCE_AMI="/aws/service/canonical/ubuntu/server/22.04/stable/current/amd64/hvm/ebs-gp2/ami-id"

aws cloudformation deploy \
    --template-file $TEMPLATE_FILE \
    --stack-name $STACK_NAME \
    --region $REGION \
    --parameter-overrides \
        InstanceName=$INSTANCE_NAME \
        InstanceSize=$INSTANCE_SIZE \
        InstanceAmi=$INSTANCE_AMI \
    --no-fail-on-empty-changeset