#!/bin/bash
echo "nombre del usuario( no root)"
read name
apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common > /dev/null 2> /dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" > /dev/null 2> /dev/null
apt update > /dev/null 2> /dev/null
apt install -y docker-ce
usermod -aG docker $name
docker version
docker run hello-world
