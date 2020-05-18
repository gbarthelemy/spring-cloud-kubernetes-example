#!/bin/sh

set -o errexit

mvn clean install

# Gateway service
docker build -t gateway-service ./gateway-service
docker tag gateway-service:latest localhost:5000/gateway-service:latest
docker push localhost:5000/gateway-service:latest

# Dummy service
docker build -t dummy-service ./dummy-service
docker tag dummy-service:latest localhost:5000/dummy-service:latest
docker push localhost:5000/dummy-service:latest
