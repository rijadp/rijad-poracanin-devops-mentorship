#!/bin/bash
# until komanda
broj=100
until [ $broj -eq 0 ]
do
echo $broj
broj=$[ $broj - 25 ]
done
