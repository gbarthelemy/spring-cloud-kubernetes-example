#!/bin/sh

set -o errexit

mvn clean install

# Dummy service
docker build -t spring-dummy-service ./spring-dummy-service
docker tag spring-dummy-service:latest localhost:5000/spring-dummy-service:latest
docker push localhost:5000/spring-dummy-service:latest

# Gateway service
docker build -t spring-gateway-service ./spring-gateway-service
docker tag spring-gateway-service:latest localhost:5000/spring-gateway-service:latest
docker push localhost:5000/spring-gateway-service:latest
