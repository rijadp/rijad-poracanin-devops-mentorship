#!/bin/bash
#Radimo iteraciju kroz sve fajlove u ovom direktoriju
#I odredjujemo da li je fajl fajl ili datoteka.

for file in /home/centos/rijadp-week-3/*
do
	if [ -d "$file" ]
	then
		echo "$file je datoteka"
	elif [ -f "$file" ]
	then
		echo "$file je fajl"
	fi
done
