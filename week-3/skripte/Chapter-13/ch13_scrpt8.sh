#!/bin/bash

file="gradovi"

for grad in $(cat $file)
do
	echo "Posjeti prekrasni $grad"
done
