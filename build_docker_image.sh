#!/bin/bash
FULL_IMAGE="$REPO_NAME:$IMAGE_TAG"

docker push "$FULL_IMAGE"

# fail on any error
set  -eu

# sudo yum update -y
# sudo amazon-linux-extras install docker -y
# sudo service docker start
# sudo systemctl enable docker

# build docker image
docker build -f techmax/Dockerfile -t "$FULL_IMAGE" techmax


# sudo docker run -dp 80:80 swanchez04/techmax-swy