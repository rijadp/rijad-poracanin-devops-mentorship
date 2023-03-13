#!/bin/bash
#Kreiranje i koristenje temp fajla

tempfile=$(mktemp test11.XXXXXX)
exec 3>$tempfile
echo "Ova skripta se upisuje u temp fajl $tempfile"
echo "ovo je prva linija" >&3
echo "Druga linija." >&3
echo "Posljednja linija." >&3
exec 3>&-
echo "Kreiranje temo fajla je zavrseno. Sadrzaj je:"
cat $tempfile
rm -f $tempfile 2> /dev/null
