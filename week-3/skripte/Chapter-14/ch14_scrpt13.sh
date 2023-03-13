#!/bin/bash
#SHIFT komanda

count=1
while [ -n "$1" ]
do
	echo "Parametar #$count = $1"
	count=$[ $count +1 ]
	shift
done
