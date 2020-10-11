#!/bin/sh

cd ./Dockerfiles/JBossServers72x
docker build -t docker.io/eat72x --ulimit nofile=5000:5000 . > outputEap72x.txt

#sudo docker stop $(sudo docker ps -a -q)
#sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi -f docker.io/eat72x
