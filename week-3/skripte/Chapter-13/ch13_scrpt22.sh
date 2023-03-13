#!/bin/bash
#Break komanda unutar for petlje

for broj in 2 4 6 8 10 12 14 16 18 20
do
	if [ $broj -eq 12 ]
	then
		break
	fi
	echo "Broj: $broj"
done
echo "Zavrseno!"
