#!/bin/bash
#Piping

for state in Sarajevo Mostar "Banja Luka" Travnik Jajce
do
	echo "$state je sljedeći grad"
done | sort
echo "Kompletirano sortiranje"
