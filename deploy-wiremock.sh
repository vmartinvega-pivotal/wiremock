#!/bin/bash

source ./wiremock-commons.sh

cf push ${WIREMOCK_APP} -p ${WIREMOCK_JAR} \
  -m ${WIREMOCK_MEMORY} \
  --no-start

cf set-env ${WIREMOCK_APP} JBP_CONFIG_JAVA_MAIN '{ arguments: "--port=8080" }'

cf start ${WIREMOCK_APP}