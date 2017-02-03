#!/bin/bash
echo "nombre del usuario( no root)"
read name
#echo $name
apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt update
apt-get install -y docker-engine
usermod -aG docker $name
docker version