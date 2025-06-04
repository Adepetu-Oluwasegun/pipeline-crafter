#!/bin/bash

# fail on any error
set  -eu

# login to your docker hub account
cat ~/my_password.txt | sudo docker login --username swanchez04 --password-stdin

# give image a new name with docker tag command
sudo docker tag techmax swanchez04/techmax-swy

# push image to docker hub
sudo docker push swanchez04/techmax-swy
