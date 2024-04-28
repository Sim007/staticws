# Showcase Static Website
# with tag <version>

#FROM nginx:1.25.4-alpine-slim
FROM nginxinc/nginx-unprivileged:stable-alpine

COPY index.html *.png start.sh /usr/share/nginx/html/

# Set a non-root user for running Nginx
#RUN adduser -D -H -u 1001 -s /bin/sh nginx_user

# Change ownership of necessary directories to the non-root user
#RUN chown -R nginx_user /var /usr /var/run

# Switch to the non-root user
#USER nginx_user

#CMD ["nginx", "-g", "daemon off;"]
CMD ["sh","/usr/share/nginx/html/start.sh"]

LABEL MAINTAINER="Johannes Sim" \
      REFRESHED_AT="2024-04-27"

# build:  docker image build -t staticws .

# tag:    docker tag staticws <repo>/staticws:<version>
# push:   docker push <repo>/staticws:<version>
# pull:   docker pull <repo>/staticws:<version>

# run:    docker container run --name staticws -d -p <port>:80 <repo>/staticws:<version>

# delete: docker container rm -f <repo>/staticws:<version>
# in:     docker container exec -it <repo>/staticws:<version> --/bin/sh

# compose:docker-compose up -d
# compose:docker-compose down

# buildx: docker buildx build -t staticwsx .