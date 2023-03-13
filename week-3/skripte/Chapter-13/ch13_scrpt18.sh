#!/bin/bash
#Nesting - for petlje

for ((a=1; a<=3; a++))
do
	echo "Početna petlja $a:"
	for ((b=1; b<=3; b++))
	do
		echo "	Unutar petlje: $b"
	done
done
