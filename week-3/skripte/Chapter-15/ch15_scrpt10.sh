#!/bin/bash
# testiranje lsof sa fajl deskriptorima
exec 3> testfile10_1
exec 6> testfile10_2
exec 7< testfile
/usr/sbin/lsof -a -p $$ -d0,1,2,3,6,7
