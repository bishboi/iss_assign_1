#!/bin/bash
echo "Please enter your SGPA:"
read str1
calc=$(echo "16 - $str1"|bc)

if [ "$(echo "$calc > 11" | bc)" -eq 1 ]
then
    echo "PROBATION"
fi
if [ 1 -eq "$(echo "$calc > 10" | bc )" ]
then
    echo "AGLE SEM PHOD DENGE"
else
    echo "You need SGPA "$calc" next sem"
fi
