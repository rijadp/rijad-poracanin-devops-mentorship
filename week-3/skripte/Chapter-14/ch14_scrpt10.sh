#!/bin/bash
# test - uzmi samo zadnji parametar
#
params=$#
echo
echo Broj parametara je $params
echo Posljednji parametar je ${!#}
echo
