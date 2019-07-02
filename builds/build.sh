#!/bin/bash

############################
###  Building the Image  ###
############################

docker run -d -p 4000:8888 --network semantix_semantix --name api_semantix rafaelmcouto/semantix_python:0.1 

sleep 5

echo "Testando a API"
curl api_semantix:8888/s/tour