#!/bin/sh

dockerize -wait-retry-interval 5s -timeout 120s -wait $HAPI_FHIR_URL node lib/app.js
