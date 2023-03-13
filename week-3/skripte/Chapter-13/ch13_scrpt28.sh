#!/bin/bash
# continue unutar outer petlje

for (( a = 1; a <= 5; a++ ))
do
	echo "Iteracija $a:"
	for (( b = 1; b < 3; b++ ))
	do
		if [ $a -gt 2 ] && [ $a -lt 4 ]
		then
			continue 2
		fi
	rez=$[ $a * $b ]
	echo " Rezultat od $a * $b je $rez"
	done
done
