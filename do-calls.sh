#!/bin/bash

source ./wiremock-commons.sh

# Test calls
curl -X POST -i http://${WIREMOCK_URL}/webservicesserver/numberconversion
echo ""
curl -X GET -i http://${WIREMOCK_URL}/v1/clienti/consistenzePrepagato/numLinea
