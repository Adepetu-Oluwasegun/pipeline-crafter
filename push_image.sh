#!/bin/bash

# Fail on any error
set -eu

# Compose the full image name
FULL_IMAGE="$DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME:$IMAGE_TAG"

# Login to Docker Hub
docker login --username "$DOCKER_HUB_USERNAME" --password "$DOCKER_HUB_PASSWORD"

# Push image to Docker Hub
docker push "$FULL_IMAGE"
