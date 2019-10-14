# Staticws (Static webserver)
This repo is a showcase of staticpage on a webserver.
We will build a container image push it to Docker Hub and run a container on:
- docker desktop with docker CLI
- docker desktop with docker-compose CLI
- docker desktop k8s cluster with kubectl CLI
- run on AKS (Azure kubernetes)
- run on play with docker
- run on play with k8s 

In this repo you find:
- sources
- Dockerfile
- configuration files

## Workflow for Docker desktop
- Clone this repo or copy and unpack the zip
- Open Visual Studio Code
- Open Docker Desktop

## Build - Ship - Run with Docker CLI
In Docker Desktop we can do the following:

Build container image:
```powershell
docker image build -t staticws:latest .
```
Ship container image to Docker Hub:
```powershell
docker tag staticws <repo>/staticws:latest
docker push <repo>/staticws:latest
docker pull <repo>/staticws:latest
```
Run the container with:
```powershell
docker container run --name staticws -d -p <port>:80 <repo>/staticws:latest  
in browser: http://localhost:<port>
```
Notes:  
- port = port on host  
- repo = name on Docker Hub

## Run with Docker compose in Docker CLI 
```powershell
cd <directory of repo>
docker-compose up -d
in browser: http://localhost:4220
```
You can also build a container image with docker-compose. Read more: [Docker-compose with build](./Examples/vbcomposebuild/readme.md)


## Run in Docker Desktop k8s with kubectl
The k8s cluster runs in Docker Desktop.

### Some k8s cluster commands
With CLI command kubectl (Docker Desktop has installed kubectl for you)  
With kubectl version we check if k8s is working:
```
kubectl version
```
To get help:
```
kubectl --help
```
  
You can show the clusters you can manage with kubectl with:
```
kubectl config get-contexts
```
Choose the correct cluster with:
```
kubectl config use docker-desktop
```
Show how many nodes there are with:
```
kubectl get nodes
```
### Run pod (container) the imperative way
You can run a container the imperative (Docker) way:
```
kubectl run staticwsink8s --image=sim007/staticws --port=4202
```
K8s is a cluster. We have define a service (loadbalancer) to access staticws from a browser:
```
kubectl expose deployment staticwsink8s --type=LoadBalancer --port=4203 --target-port=80
```
You can open staticws in a browser:
```
https:\\localhost:4203
```
You can check the resources with:
```
kubectl get deployments
kubectl get services
```
You can delete the deployment and service with:
```
kubectl delete deployment staticwsink8s
kubectl delete service staticwsink8s
```

### Run staticws the declarative way
We define our desired state in a k8s yaml with the resources:
- deployment and 
- service

Goto the directory where staticws4Azure.yaml is and go to your cluster with:
``` powershell
kubectl config use <cluster>
```
Deploy staticws with:
```powershell
kubectl apply -f staticws.yaml
```
Check staticws in a browser with:
```
http://localhost:4223
```
You can check the resources with:
```
kubectl get all
kubectl get deployments
kubectl get services
```
You can delete the deployment and service with:
```
kubectl delete deployment staticws-deployment
kubectl delete service staticws-service
```
## Run with K8S in Azure AKS in a Docker CLI
Your can reach AKS on Azure with your kubectl. 
Goto directory where staticws4Azure.yaml is
```powershell
kubectl apply -f staticws4Azure.yaml
```
Note: you need an Azure account and an AKS cluster

## Run in "play with Docker"
In browser goto https://labs.play-with-docker.com/  

Login and start Virtual machine

```powershell
git clone https://github.com/Sim007/staticws.git 
docker container run --name staticws -d -p <port>:80 <repo>/staticws:latest
```
### run with docker-compose
You can also start staticws with docker-compose. You need docker-compose file.
```
docker-compose up
```

## Run in "play with K8s" (or "katacode")
In browser goto https://labs.play-with-k8s.com and https://www.katacoda.com/courses/kubernetes/playground)

Remember you only need:
- container images in container registry
- config files
The k8s yaml is available on github. You can give the yaml in command. Go to yaml file in github and click the button raw and use this URL.

Login and start a k8s environment
```powershell
kubectl -f https://raw.githubusercontent.com/Sim007/staticws/master/Staticws.yaml
```

## Azure DevOps:
- Azure pipeline
    - Build pipeline
    - Release pipeline

## GitLab CI
To do  

- [portainer](./Examples/vbportainer/readme.md)