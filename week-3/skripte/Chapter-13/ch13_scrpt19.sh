#!/bin/bash
#For petlja unutar while petlje

broj1=5

while [ $broj1 -ge 0 ]
do
	echo "Vanjska petlja: $broj1"
	for (( broj2=1; broj2<3; broj2++ ))
	do
		broj3=$[ $broj1 * $broj2 ]
		echo "	Unutrasnja petlja: $broj1 * $broj2 = $broj3"
	done
	broj1=$[ $broj1 - 1 ]
done
