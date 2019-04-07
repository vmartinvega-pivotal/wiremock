#!/bin/bash

source ./wiremock-commons.sh

cf delete ${WIREMOCK_APP} -f 