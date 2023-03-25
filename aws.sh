#!/usr/bin/env bash

## You can replicate this file and setup for another account.
## To run. 
## 1. Go to directory on where this file is located.
## 2. Run ./aws.sh

## The name of the profile from .aws/credential file
export AWS_PROFILE=default

set -euo pipefail

## The name of your AWS Account. This be globally unique.
ACCOUNT_NAME="brendahernandez"

## Use this region, its 20% cheaper
REGION="us-east-1"

ENVIRONMENT=default
S3_BUCKET=$ACCOUNT_NAME-tfstate-$ENVIRONMENT
DYNAMODB_TABLE=$ACCOUNT_NAME-tfstate-$ENVIRONMENT

terraform init \
-backend-config="bucket=$S3_BUCKET" \
-backend-config="region=$REGION" \
--reconfigure