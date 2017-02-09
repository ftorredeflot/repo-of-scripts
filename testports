#!/bin/bash

echo "Indique la IP:"
read ip
echo "Indique el puerto Inicio:"
read port1
echo "Indique el puerto Fin:"
read port2
echo "Indique el nombre del archivo:"
read narchivo

#DATE=`date +%Y-%m-%d:%H:%M:%S`
echo "los puertos abiertos son:" >$narchivo
#echo $DATE

for i in $(seq $port1 1 $port2)
	do
	nc -z -w2 $ip $i
			if [ $? -eq 0 ]
				then
				DATE=`date +%Y-%m-%d:%H:%M:%S`
				echo "Puerto encontrado:  "$i" en la seguiente fecha: "$DATE >> $narchivo
			fi
	done

