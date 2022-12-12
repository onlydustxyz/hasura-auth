#/bin/bash

source .env

DOCKER_NAME=$DOCKER_REGISTRY/hasura-auth:latest

docker login --username $DOCKERHUB_USERNAME --password $DOCKERHUB_PASSWORD
docker buildx build --platform linux/amd64 -t $DOCKER_NAME --push .
