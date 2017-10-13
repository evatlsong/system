#!/bin/sh
docker container run -p 8081:80 --name nginx-nerc-front -d -v "$PWD":/usr/share/nginx/html nginx:alpine
