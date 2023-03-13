#!/bin/bash
#Korištenje timing-a sa READ komandom

if read -t 5 -p "Unesi svoje ime: " name
then
	echo "Zdravo $name, nastavi učiti."
else
	echo "Isteklo vrijeme za unos."
fi
