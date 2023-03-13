#!/bin/bash
#Kreiranje temp fajla u /tmp

tempfile=$(mktemp -t tmp.XXXXXX)

echo "Ovo je testni fajl." > $tempfile
echo "Ovo je druga linija u testnom fajlu." >> $tempfile
echo "Temo fajl je lociran u: $tempfile"
cat $tempfile
rm -f $tempfile
