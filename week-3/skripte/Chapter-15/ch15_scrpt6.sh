#!/bin/bash
# storing STDOUT, then coming back to it

exec 3>&1
exec 1>testout6
echo "Ovo ce se sacuvati u output fajlu"
echo "zajedno sa ovom linijom"
exec 1>&3
echo "Sada se stvari vracaju u normalu."
