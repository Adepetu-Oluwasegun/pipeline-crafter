#!/bin/bash

# fail on any error
set  -eu

FULL_IMAGE="$DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME:$IMAGE_TAG"

docker login -u "$DOCKER_HUB_USERNAME" -p "$DOCKER_HUB_PASSWORD"


# build docker image
docker build -f techmax/Dockerfile -t "$FULL_IMAGE" techmax


# sudo docker run -dp 80:80 swanchez04/techmax-swy