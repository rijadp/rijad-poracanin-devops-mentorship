i#!/bin/bash
#Preusmjeravanje outputa na različite lokacije

exec 2> testerror

echo "Početak skripte"
echo "Sada preusmjeri sav output na drugu lokaciju"

exec 1> testout

echo "Ovaj output treba otici u testout file"

echo "A ovaj ce otici u testrror file" >&2
