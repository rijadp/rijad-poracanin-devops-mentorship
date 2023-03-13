#!/bin/bash
# break komanda sa while petljom
br=1
while [ $br -lt 10 ]
do
	if [ $br -eq 5 ]
	then
		break
	fi
	echo "Iteracija: $br"
	br=$[ $br + 1 ]
done
echo "Zavrseno!"
