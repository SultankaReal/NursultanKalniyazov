#!/bin/bash
source scripts/vars #the root directory for variables

docker ps -q -f name=$CNAME
docker stop $CNAME && docker container rm $CNAME  #stop the container
docker build -t $IMGNAME . && docker run --name $CNAME -d -p 8080:8080 $IMGNAME #building the image
