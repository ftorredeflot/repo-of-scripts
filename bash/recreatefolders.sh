#!/bin/bash

## VARIABLES ####

#ruta a los ficheros
ruta_actual="/owncloud-data/data/owniscat/files/Proyectos"

# AÑO anterior
OLDYEAR=$(date +%Y)

# AÑO actual
NEWYEAR=$(date +%Y -d "+ 1 year")

#################

find $($ruta_actual)/$(OLDYEAR)  -maxdepth 1 -type d  >dirs.txt


echo $OLDYEAR
echo $NEWYEAR

