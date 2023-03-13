#!/bin/bash
#Koristenje TEE komande za slanje podataka u fajl

tempfile=testfile14

echo "Ovo je prva recenica testfajla." | tee $tempfile
echo "Ovo je drugi red." | tee -a $tempfile
echo "Zavrsni red" | tee -a $tempfile
