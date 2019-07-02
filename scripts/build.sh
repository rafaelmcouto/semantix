#!/bin/bash

############################
###  Building the Image  ###
############################

cd /var/jenkins_home/workspace/semantix/app
docker build -t api_semantix .
