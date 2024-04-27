# Showcase Static Website
# with tag latest

FROM nginx:1.25.4-alpine-slim

# Voeg een non-rootgebruiker toe
RUN adduser --system --shell /bin/bash --no-create-home --disabled-password --group myuser

# Wijzig de eigenaar van de Nginx-configuratie
RUN chown myuser:myuser /etc/nginx/nginx.conf

USER myuser
COPY index.html *.png start.sh /usr/share/nginx/html/
#CMD ["nginx", "-g", "daemon off;"]

CMD ["sh","/usr/share/nginx/html/start.sh"]

LABEL MAINTAINER="Johannes Sim" \
      REFRESHED_AT="2024-04-12"

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