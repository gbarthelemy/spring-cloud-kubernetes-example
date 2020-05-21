# Spring cloud kubernetes example

This project is a tutorial about creating 2 kubernetes microservices based on Spring.

* **Dummy Service** : Simple springboot project with a basic root endpoint.  
* **Gateway service** : Simple springboot project with some spring cloud kubernetes dependencies, including the following features :
  * inject spring properties from k8s configmap
  * inject spring properties from k8s secret
  * call dummy service from k8s client discovery

## 1. Prerequisites
* docker daemon
* kind installed (Minikube could do the job also)
* kubectl cli installed
* maven cli installed
* java 11 installed

You will find the prerequisites installation [instructions here](utils/setup-tools/README.md)

## 2. Setup kubernetes cluster

#### 2.1. create kind kubernetes cluster
```bash
./utils/0-create-kind-cluster.sh
```

This script does the following tasks :
* run registry:2 container (local image repository used by our local k8s cluster)
* create our local k8s cluster named spring-kube using config for handling docker registry and portMapping
* create Contour ingress controller
* create kind patch to forward the hostPorts to the ingress controller
* create k8s role and binding namespace reader
* create k8s metric-server


## 3. Setup Dummy service

You will find the [instructions here](dummy-service/README.md)

## 4. Setup Gateway service

You will find the [instructions here](gateway-service/README.md)
