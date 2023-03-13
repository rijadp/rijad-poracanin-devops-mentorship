#!/bin/bash
#testiranje READ -p (prompt) opcije

read -p "Unesi svoje godine: " god
dani=$[ $god * 365 ]
echo "Ti imaš $dani dana."
