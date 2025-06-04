#!/bin/bash

# fail on any error
set  -eu

# sudo yum update -y
# sudo amazon-linux-extras install docker -y
# sudo service docker start
# sudo systemctl enable docker

# build docker image
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .


# sudo docker run -dp 80:80 swanchez04/techmax-swy