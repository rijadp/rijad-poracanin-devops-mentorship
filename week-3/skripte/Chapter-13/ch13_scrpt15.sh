#!/bin/bash
#testiranje multicommand while petlje

broj=10

while echo $broj
	[ $broj -ge 0 ]
do
	echo "Ovo je unutar petlje"
	broj=$[ $broj - 1 ]
done
