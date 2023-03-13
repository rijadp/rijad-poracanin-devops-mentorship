#!/bin/bash
#Sacuvati output u fajl

for (( i=0; i<=10; i++ ))
do
	echo "Broj je $i"
done > brojevi.txt
echo "Skripta je zavrsena."
