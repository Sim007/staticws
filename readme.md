This repo is a showcase of staticpage on webserver to show:

Workflow:
- Clone repo this repo or copy and unpack zip
- Open Visual Studio Code
- Open Docker Desktop

In repo:
- sources
- Dockerfile
- Configuration

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

via Docker Desktop:
    - with Docker CLI: Docker commands
    - with Docker CLI: Docker-compose
    - with kubctl on K8S deploy on docker desktop

via Docker Desktop on Azure:
    - with kubctl on K8S AKS (Azure)

via Play with Docker:
    - Docker CLI: docker command
    - Docker CLI: docker-compose

via Azure DevOps:
- Azure pipeline
    - Build pipeline
    - Release pipeline

GitLab
To do  


