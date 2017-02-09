#!/bin/bash
echo "pulling jhipster image"
docker pull jhipster/jhipster:latest
mkdir ~/jhipster
docker run --name jhipster -v ~/jhipster:/home/jhipster/app -v ~/.m2:/home/jhipster/.m2 -p 8080:8080 -p 3000:3000 -p 3001:3001 -d -t jhipster/jhipster
echo "estado del container docker"
docker ps
echo "log into container"
docker exec -it jhipster bash