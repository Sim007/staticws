# Showcase Static Website
# with tag latest

FROM nginx:stable-alpine
COPY index.html *.png start.sh /usr/share/nginx/html/
#CMD ["nginx", "-g", "daemon off;"]

CMD ["sh","/usr/share/nginx/html/start.sh"]

LABEL MAINTAINER="Johannes Sim" \
<<<<<<< HEAD
      REFRESHED_AT="2022-01-11"
=======
      REFRESHED_AT="2022-01-21"
>>>>>>> 2d74ac707e203bc612a24731708320e4639ece92

# build:  docker image build -t staticws .

# tag:    docker tag staticws <repo>/staticws:latest
# push:   docker push <repo>/staticws:latest
# pull:   docker pull <repo>/staticws:latest

# run:    docker container run --name staticws -d -p <port>:80 <repo>/staticws:latest

# delete: docker container rm -f staticws
# in:     docker container exec -it staticws /bin/sh

# compose:docker-compose up -d
# compose:docker-compose down

# buildx: docker buildx build -t staticwsx .