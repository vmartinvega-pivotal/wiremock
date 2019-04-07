#!/bin/bash

source ./wiremock-commons.sh

# Put files
for file in `ls files` 
do
  echo "DEBUG: Uploading file: $file to server for mocking"
  curl -X PUT \
  --data-binary "@files/$file" \
  http://${WIREMOCK_URL}/__admin/files/$file > /dev/null 2>&1
done

# Put stubbings
for stubbing in `ls stubbings` 
do
  echo "DEBUG: Uploading stubbing: $stubbing to server for mocking"
  curl -X POST \
  --data-binary "@stubbings/$stubbing" \
  http://${WIREMOCK_URL}/__admin/mappings/new > /dev/null 2>&1
done
