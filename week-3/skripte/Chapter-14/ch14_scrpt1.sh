#!/bin/bash
#Koristimo 1 parametar

factorial=1
for (( broj = 1; broj <= $1 ; broj++ ))
do
	factorial=$[ $factorial * $broj ]
done
echo Faktorijel od $1 je $factorial
