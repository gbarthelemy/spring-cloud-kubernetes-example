# Spring cloud kubernetes dummy service

This module is a basic web-service based on Springboot. The runnable is built as a jar and then embedded in openjdk docker image. 

This project has the following dependencies :
 * spring-boot-starter-web
 * spring-boot-starter-actuator

It is build as a jar and then embedded in openjdk docker image.

* Start time : 9.063 seconds
* Pod memory usage : 147Mi
* Pod CPU(cores) : 6m
* Image size : 245MB
* App build time : ~4 seconds

## 1. Prerequisites

* docker daemon
* kind installed (Minikube could do the job also)
* kubectl cli installed
* maven cli installed
* Java 11 installed
* local kubernetes cluster running
* default serviceAccount have access to configmaps, secrets, pods, services

You will find the [instructions here](../README.md)

## 2. Build the application

### 2.1. Build the image

Build the app jar   
```bash
mvn clean install
```

Build the docker image 
```bash
docker build -t spring-dummy-service .
```

### 2.2. Push the image to the kubernetes image repository

Tag the image to prepare upload   
```bash
docker tag spring-dummy-service:latest localhost:5000/spring-dummy-service:latest
```
Push the image to the kubernetes repository
```bash
docker push localhost:5000/spring-dummy-service:latest
```

## 3. Run 

### 3.1. Run the app

Create NodePort service and Deployment spring-dummy-service
```bash
kubectl delete -f 1-spring-dummy-service-deployment.yaml 
kubectl create -f 1-spring-dummy-service-deployment.yaml 
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

```bash
kubectl top pods <pod_name> 
# <pod_name> is returned in 'kubectl get pods' command 
```
