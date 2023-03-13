#!/bin/bash
lista="Sarajevo Zenica Travnik Mostar Jajce"
lista=$lista" Tuzla"

for grad in $lista
do
	echo "Da li si ikad posjetio $grad?"
done
