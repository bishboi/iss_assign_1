#!/bin/bash
myarray=("$@")
declare -a sorted
declare -i min
declare -i max
declare -i tem
for (( f=0; f<"$#" ; f++ ))
do
    if [[ ${myarray[$f]} -ge $max ]]; then
        max=${myarray[$f]}
    fi
done
for (( a=0; a<"$#" ; a++ ))
do
    min=${myarray[$a]}
    for (( i=0; i<"$#" ; i++))
    do 
        if [[ $min -ge ${myarray[$i]} ]]; then
            min=${myarray[$i]}
            tem=$i
        fi
    done
    myarray[$tem]=$(( max+1 ))
    if [ $(( max+1 )) -gt $min ]; then
        echo -n "$min "
        sorted+=$min
    fi
done
echo
