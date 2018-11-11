#!/bin/bash
echo "Indique la version (solo el TAG):"
read v
echo "el Nombre del container sera: jhipster_$v y estara en ~/jhipster_$v"
echo "pulling jhipster image"
docker pull jhipster/jhipster:$v
mkdir ~/jhipster_$v
docker run --name jhipster_$v -v ~/jhipster_$v:/home/jhipster/app -v ~/.m2:/home/jhipster/.m2 -p 8080:8080 -p 3000:3000 -p 3001:3001 -d -t jhipster/jhipster:$v
echo "estado del container docker"
docker ps
echo "Entrando al container"
docker exec -it jhipster_$v bash