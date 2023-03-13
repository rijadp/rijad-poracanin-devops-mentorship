#!/bin/bash
# testing closing file descriptors
exec 3> testfile9
echo "This is a test line of data" >&3
exec 3>&-
cat testfile9
exec 3> testfile9
echo "This'll be bad" >&3
