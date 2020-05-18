# Spring cloud kubernetes example

This project is a tutorial about creating 2 kubernetes micro-service based on Spring.

**Dummy Service** : Simple springboot project with a basic root endpoint.  
**Gateway service** : Simple springboot project with some kubernetes dependencies, it includes following features :
* inject spring properties from k8s configmap
* inject spring properties from k8s secret
* call dummy service from k8s client discovery

## 1 Prerequisites
* Docker daemon
* kind installed (Minikube could do the job also)
* kubectl cli installed

You will find the [instructions here](utils/setup-tools/README.md)

## 2 Setup kubernetes cluster

#### 2.1 create kind kubernetes cluster
```bash
./utils/create-kind-cluster-with-local-registry.sh spring-kube
```

This script does the following tasks :
* run registry:2 container (local image repository used by our local k8s cluster)
* create our local k8s cluster named spring-kube 

#### 2.2 create role
```bash
kubectl delete -f 0-namespace-reader-role.yaml
kubectl create -f 0-namespace-reader-role.yaml
```

## 3 Setup Dummy service

You will find the [instructions here](dummy-service/README.md)

## 4 Setup Gateway service

You will find the [instructions here](gateway-service/README.md)
