#!/bin/bash

#############################
###  Deploying the Image  ###
#############################

docker stop api_semantix
docker run -d -p 4000:8888 --rm --network semantix_semantix --name api_semantix rafaelmcouto/semantix_python:0.1 

sleep 5

curl api_semantix:8888/s/tour