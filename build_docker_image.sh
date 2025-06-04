#!/bin/bash

# fail on any error
set  -eu

# sudo yum update -y
# sudo amazon-linux-extras install docker -y
# sudo service docker start
# sudo systemctl enable docker

# build docker image
sudo docker build -t techmax .


# sudo docker run -dp 80:80 swanchez04/techmax-swy