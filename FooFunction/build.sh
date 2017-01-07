#!/bin/bash

{
  rm FooFunction.zip
  cd FooFunction; zip -r ../FooFunction.zip *; cd ..;
} &> /dev/null

MD5=$(md5sum -b FooFunction.zip | awk '{print $1}')

{
  aws s3 cp FooFunction.zip s3://$S3_BUCKET_NAME/FooFunction-$MD5.zip
  aws s3 cp FooFunction.zip s3://$S3_BUCKET_NAME/FooFunction-latest.zip
  rm FooFunction.zip
} &> /dev/null

echo $MD5