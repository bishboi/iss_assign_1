#!/bin/bash
declare -i n=0;
ping -c $1 google.com >> temp.txt
readarray -t output < temp.txt
for i in "${output[@]}"; do
    if [ $n -eq 0 ]; then
        echo $i
        n=n+1
        continue
    elif [ $n -gt $1 ]; then
        echo $i
        n=n+1
        continue
    fi
    echo "$n."$i
    n=n+1
done
rm temp.txt