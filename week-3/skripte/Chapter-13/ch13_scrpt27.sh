#!/bin/bash
# Neispravno koristenje Continue komande unutar while petlje

br=0

while echo "while iteracija: $br"
	[ $br -lt 15 ]
do
	if [ $br -gt 5 ] && [ $br -lt 10 ]
	then
		continue
	fi
	echo " Inside iteration number: $br"
	br=$[ $br + 1 ]
done
