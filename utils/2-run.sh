#!/bin/sh

# Dummy service
kubectl delete -f spring-dummy-service/1-spring-dummy-service-deployment.yaml
kubectl create -f spring-dummy-service/1-spring-dummy-service-deployment.yaml

# Gateway service
kubectl delete -f spring-gateway-service/3-spring-gateway-service-deployment.yaml
kubectl create -f spring-gateway-service/3-spring-gateway-service-deployment.yaml
