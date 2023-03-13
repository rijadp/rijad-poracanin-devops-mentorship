#!/bin/bash
#Izmjene IFS vrijednosti

#IFS.OLD=$IFS
IFS=$'\n'
for entry in $(cat /etc/passwd)
do
	echo "vrijednosti u $entry -"
	IFS=:
	for value in $entry
	do
		echo "	$value"
	done
done
