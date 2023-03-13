#!/bin/bash
# procesiranje novih korisnika

input="korisnici.csv"
while IFS=',' read -r userid name
do
	echo "adding $userid"
	useradd -c "$name" -m $userid
done < "$input"
