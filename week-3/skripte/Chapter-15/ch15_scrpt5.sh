#!/bin/bash

exec 3>testout5
echo "Ovo ce se ispisati na monitoru!"
echo "Ovo ce se upisati u fajl testout5" >&3
echo "Ovo ce se opet ispisati na monitoru."
