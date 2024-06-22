#!/bin/bash

USERNAME="sca_lagos"
POLICY_ARN="arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"

# Create IAM user
aws iam create-user --user-name $USERNAME

# Attach policy to the user
aws iam attach-user-policy --user-name $USERNAME --policy-arn $POLICY_ARN

# Create access keys for the user
aws iam create-access-key --user-name $USERNAME > access_keys.json

echo "IAM user $USERNAME created and policy $POLICY_ARN attached."
echo "Access keys saved to access_keys.json"
