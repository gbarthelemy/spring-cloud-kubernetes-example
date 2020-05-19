#!/bin/sh

# Gateway service
kubectl delete -f gateway-service/3-gateway-service-deployment.yaml
kubectl create -f gateway-service/3-gateway-service-deployment.yaml

# Dummy service
kubectl delete -f dummy-service/1-dummy-service-deployment.yaml
kubectl create -f dummy-service/1-dummy-service-deployment.yaml
