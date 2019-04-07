#!/bin/bash

WIREMOCK_VERSION="2.22.0"
WIREMOCK_JAR="binaries/wiremock-standalone-${WIREMOCK_VERSION}.jar"
WIREMOCK_MEMORY="1024M"

# Will be created dinamically by the pipeline, a random name
WIREMOCK_APP="wiremock"

WIREMOCK_URL="${WIREMOCK_APP}.apps.sdpcollaudo.telecomitalia.local"
