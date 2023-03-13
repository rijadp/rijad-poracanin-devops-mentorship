#!/bin/bash
# until komanda
broj=100
until echo $broj
	 [ $broj -eq 0 ]
do
	echo Unutar petlje: $broj
	broj=$[ $broj - 25 ]
done
