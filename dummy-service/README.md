# Spring cloud kubernetes dummy service

This module is a basic web-service and is based on Springboot. It is build as a jar and then embedded in openjdk docker image. 

## 1. Prerequisites

* Docker daemon
* kind installed (Minikube could do the job also)
* kubectl cli installed
* maven cli installed
* Java 11 installed
* local kubernetes cluster running
* default serviceAccount have access to configmaps, secrets, pods, services

You will find the [instructions here](../README.md)

## 2. Build the application

### 2.1. Build the image manually

Build the app jar   
```bash
mvn clean install
```
Build the docker image named dummy-service   
```bash
docker build -t dummy-service .
```

### 2.2. Push the image to the kubernetes image repository

Tag the image to prepare upload   
```bash
docker tag dummy-service:latest localhost:5000/dummy-service:latest
```
Push the image to the kubernetes repository
```bash
docker push localhost:5000/dummy-service:latest
```

## 3. Run 

### 3.1. Run the app

Create NodePort service and Deployment dummy-service
```bash
kubectl delete -f 1-dummy-service-deployment.yaml 
kubectl create -f 1-dummy-service-deployment.yaml 
```

### 3.2. Check state of the app

Check k8s service (NodePort) status
```bash
kubectl get services 
```
Check pods status
```bash
kubectl get pods 
```
You can get pod detailed information running the followings
```bash
kubectl describe pod <pod_name> 
# <pod_name> is returned in 'kubectl get pods' command 
```
```bash
kubectl logs <pod_name> 
# <pod_name> is returned in 'kubectl get pods' command 
```
