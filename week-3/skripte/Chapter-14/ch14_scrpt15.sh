#!/bin/bash
# CASE i SHIFT
#
echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Pronadjena opcija -a" ;;
		-b) echo "Pronadjena opcija -b" ;;
		-c) echo "Pronadjena opcija -c" ;;
		 *) echo "$1 nije opcija" ;;
	esac
	shift
done

