#!/bin/bash
#citanje iz fajla - definisanje IFS varijable
#Definisemo IFS vrijednost tako da se prepozna jedino karakter za novi red. Space i tabove ignorise.
#To je korisno kada nam se npr. vrijednost unutar skripte sastoji od više rijeci, jer ce bash shell tako ignorisati space.

file="gradovi"

IFS=$'\n'

for grad in $(cat $file)
do
	echo "Posjeti prekrasni $grad"
done
