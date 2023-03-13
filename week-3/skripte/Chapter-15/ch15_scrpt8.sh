#!/bin/bash
# testiranje input/output

exec 3<> testfile
read line <&3
echo "Read: $line"
echo "Ovo je testna linija" >&3
