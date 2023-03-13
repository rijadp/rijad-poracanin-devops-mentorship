#!/bin/bash
# Citanje podataka iz fajla text.txt
#
count=1
cat text.txt | while read line
do
	echo "Linija $count: $line"
	count=$[ $count + 1]
done
echo "Procesiranje fajla je završeno!"
