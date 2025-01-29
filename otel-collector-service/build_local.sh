#!/bin/bash

OTEL_COLLECTOR_CONTRIB_VERSION=$(yq '.otel-collector-contrib.version' ./version.yaml)
echo "${OTEL_COLLECTOR_CONTRIB_VERSION}"

docker build --no-cache -t local/otel-collector-service:latest --build-arg otel_collector_version="${OTEL_COLLECTOR_CONTRIB_VERSION}" .