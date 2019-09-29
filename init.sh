#!/bin/bash
if [ ! -f .env ]; then
 cp .env_bak .env        #copy .envconfig file
fi

#stop service
#    docker-compose -f docker-compose.yaml down

#start service
docker-compose -f docker-compose.yaml up -d

