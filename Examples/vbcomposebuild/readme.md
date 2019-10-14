# Build staticws within docker-compose
In a developer use case it is handy to also have building the container image in docker-compose

In the docker-compose there is line
```
build: .
```
If the container image is not present in docker or docker registry it will build the container image and name and tag as you defined in keyword "image" in docker-compose.

If make you make a change you can build with the following docker-compose command:
```
docker compose up --build
```
If you only want to build the container image give:
```
docker-compose build
```
This is the same as following Docker command:
```
docker build -t <repo>/name .
```