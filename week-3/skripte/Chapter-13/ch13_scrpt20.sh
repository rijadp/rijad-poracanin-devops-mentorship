#!/bin/bash
# kombinacija until i while petlji
broj1=3
until [ $broj1 -eq 0 ]
do
echo "Vanjska petlja: $broj1"
broj2=1
while [ $broj2 -lt 5 ]
do
broj3=$(echo "scale=4; $broj1 / $broj2" | bc)
echo " Unutrasnja petlja: $broj1 / $broj2 = $broj3"
broj2=$[ $broj2 + 1 ]
done
broj1=$[ $broj1 - 1 ]
done
