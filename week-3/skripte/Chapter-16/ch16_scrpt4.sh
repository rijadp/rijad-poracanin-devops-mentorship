#!/bin/bash
# Testiranje pokretanja skripte u pozadini

count=1
while [ $count -le 10 ]
do
sleep 1
count=$[ $count + 1 ]
done
