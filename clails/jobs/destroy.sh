#!/bin/bash

aws s3api create-bucket --bucket=terraform-state-$PROJECT --region $REGION
aws dynamodb create-table \
         --region us-east-1 \
         --table-name terraform_locks \
         --attribute-definitions AttributeName=LockID,AttributeType=S \
         --key-schema AttributeName=LockID,KeyType=HASH \
         --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

set -e

terraform init \
-backend-config="bucket=terraform-state-$PROJECT" \
-backend-config="dynamodb_table=terraform_locks" \
-backend-config="key=account-$ENVIRONMENT" \
-backend-config="region=$REGION"
terraform destroy -var email=EMAIL -var name=$PROJECT-$ENVIRONMENT