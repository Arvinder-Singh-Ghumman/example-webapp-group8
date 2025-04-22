#!/bin/bash

# Variables - update with your actual values
REPO_NAME="group8-hello-world"
REGION="us-east-1"
IMAGE_NAME="your-image-name"
AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

# Authenticate Docker with ECR
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com

# Tag and push the image
docker tag $IMAGE_NAME:latest ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/$REPO_NAME:latest
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/$REPO_NAME:latest
