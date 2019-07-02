#!/bin/bash

#############################
###  Deploying the Image  ###
#############################

echo "Stopping the container if exists"
docker stop api_semantix
docker run -d -p 4000:8888 --rm --name api_semantix --network semantix_semantix rafaelmcouto/semantix_python:0.1 

sleep 5

curl api_semantix:8888/s/tour