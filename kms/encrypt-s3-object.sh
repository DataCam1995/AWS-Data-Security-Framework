#!/bin/bash

BUCKET_NAME="your-secure-bucket"
FILE_NAME="example.txt"
KMS_KEY_ID="alias/your-key"

aws s3 cp $FILE_NAME s3://$BUCKET_NAME/$FILE_NAME \
  --sse aws:kms \
  --sse-kms-key-id $KMS_KEY_ID
Add KMS encryption script for secure S3 upload
