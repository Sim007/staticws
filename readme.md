# Staticws (Static webserver)
This repo is a showcase of staticpage on a webserver.
We will build a container image and run a container on several platforms

## Workflow
- Clone this repo or copy and unpack zip
- Open Visual Studio Code
- Open Docker Desktop

In this repo you find:
- sources
- Dockerfile
- Configurations files

## Build - Ship - Run in Docker Desktop CLI
In Docker Desktop we can do the following:

Build container in Docker Desktop
```powershell
docker image build -t staticws:latest .
```
Ship container to Docker Hub via Docker Desktop
```powershell
docker tag staticws <repo>/staticws:latest
docker push <repo>/staticws:latest
docker pull <repo>/staticws:latest
```
Run the container with:
```powershell
docker container run --name staticws -d -p <port>:80 <repo>/staticws:latest
```
Note: <repo> = name on DockerHub

## Run with Docker compose in Docker Desktop CLI 
```powershell
cd <directory of repo>
docker-compose up -d
```

## Run with K8S in Docker Desktop with Docker Desktop CLI
```powershell
cd <directory of repo>
kubectl -f staticws.yaml
```

## Run with K8S in Azure AKS in a CLI
```powershell
cd <directory of repo>
kubectl -f staticws.yaml
```
Note: you need a Azure account and AKS cluster

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
kubectl -f staticws.yamld
```

## Azure DevOps:
- Azure pipeline
    - Build pipeline
    - Release pipeline

## GitLab CI
To do  


