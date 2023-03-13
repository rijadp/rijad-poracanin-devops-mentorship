#!/bin/bash
#1 karakter inputa

read -n1 -p "Da li zelite nastaviti? [Y/N]?" odg

case $odg in
Y | y) echo
	echo "Nastavljamo..";;
N | n) echo
	echo "Necemo nastaviti..."
	exit;;
esac
echo "Ovo je kraj skripte."

