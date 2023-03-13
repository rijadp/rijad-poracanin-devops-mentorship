#!/bin/bash
#Koristenje privremenih direktorija

tempdir=$(mktemp -d dir.XXXXXX)
cd $tempdir
tempfile1=$(mktemp temp.XXXXX)
tempfile2=$(mktemp temp.XXXXXX)

exec 7> $tempfile1
exec 8> $tempfile2

echo "Slanje podataka u direktorij $tempdir"
echo "Ovo je tekst za $tempfile1" >&7
echo "ovo je tekst za $tempfile2" >&8
