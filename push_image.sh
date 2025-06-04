#!/bin/bash

# fail on any error
set  -eu

# login to your docker hub account
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

# give image a new name with docker tag command
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# push image to docker hub
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME
