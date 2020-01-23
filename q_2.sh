#!/bin/bash
echo "total size:"
find . -type d -printf "%p %s B\n"
echo "number of files:"
while read a
do
    while read p n l1 l2 size d t n
    do
    num=$( find $a -maxdepth 1 | wc -l )
    echo "${a} ${num} files"
    done <<< $( ls -ldh $a/ )
done <<< $( find . -type d )