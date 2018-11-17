# Showcase Static Website
# with tag latest

FROM nginx:stable-alpine
COPY index.html *.png /usr/share/nginx/html/

LABEL MAINTAINER="Johannes Sim" \
      REFRESHED_AT="2018-11-17"

# build:  docker image build -t sim007/staticws:latest .

# push:   docker push sim007/staticws:latest
# pull:   docker pull sim007/staticws:latest

# run:    docker container run --name staticws -d -p 4200:80 sim007/staticws:latest

# delete: docker container rm -f staticws
# in:     docker container exec -it staticws /bin/sh

# compose: docker-compose up -d


# Azure registry example
# build:  docker image build -t centricms.azurecr.io/staticws/staticws:latest .
# push :  docker push centricms.azurecr.io/staticws:latest
# pull :  docker pull centricms.azurecr.io/staticws:latest
# run  :  docker container run --name staticws -d -p 4200:80 centricms.azurecr.io/staticws/staticws:latest
