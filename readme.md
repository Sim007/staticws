# Staticws (Static webserver)
This repo is a showcase of staticpage on a webserver.
We will build a container image and run a container on several platforms.

In this repo you find:
- sources
- Dockerfile
- configuration files

## Workflow
- Clone this repo or copy and unpack the zip
- Open Visual Studio Code
- Open Docker Desktop

## Build - Ship - Run in Docker CLI
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
```
Notes:  
port = port on host  
repo = name on Docker Hub

## Run with Docker compose in Docker CLI 
```powershell
cd <directory of repo>
docker-compose up -d
```

## Run with K8S in Docker Desktop with Docker CLI
```powershell
cd <directory of repo>
kubectl -f staticws.yaml
```

## Run with K8S in Azure AKS in a Docker CLI
```powershell
cd <directory of repo>
kubectl -f staticws4Azure.yaml
```
Note: you need an Azure account and an AKS cluster

## Run in play with Docker
In browser goto https://labs.play-with-docker.com/  
Login and start Virtual machine
```powershell
git clone https://github.com/Sim007/staticws.git 
docker container run --name staticws -d -p <port>:80 <repo>/staticws:latest
```

## Run in play with K8s
In browser goto https://labs.play-with-k8s.com/  
Login and start k8s environment
```powershell
git clone https://github.com/Sim007/staticws.git 
kubectl -f staticws.yaml
```

## Azure DevOps:
- Azure pipeline
    - Build pipeline
    - Release pipeline

## GitLab CI
To do  


