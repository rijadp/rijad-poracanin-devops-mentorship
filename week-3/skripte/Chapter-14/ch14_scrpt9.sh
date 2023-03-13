#!/bin/bash
# Testiranje parametara - ako nisu unijeta 2 parametra, prikazuje kako treba da se unese.

if [ $# -ne 2 ]
then
	echo
	echo Usage: ch14_scrpt9.sh a b
	echo
else
	total=$[ $1 + $2 ]
	echo
	echo Total je $total
	echo
fi
