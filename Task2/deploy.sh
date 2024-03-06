#!/bin/bash

DOCKER_USER=agray998

docker stop $(docker ps -q)
docker rm $(docker ps -aq)

docker build -t $DOCKER_USER/task2-db db
docker build -t $DOCKER_USER/task2-app flask-app
docker build -t $DOCKER_USER/task2-nginx nginx

docker network create task2

docker run -d --network task2 --name mysql --env MYSQL_ROOT_PASSWORD $DOCKER_USER/task2-db
docker run -d --network task2 --name flask-app --env MYSQL_ROOT_PASSWORD $DOCKER_USER/task2-app
docker run -d --network task2 --name nginx -p 80:80 $DOCKER_USER/task2-nginx
