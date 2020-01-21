#!/bin/bash
echo "Enter A:"
read a
echo "Enter B:"
read b
d=$(( $a*$b ))
while [ 1 ]; do
    if [ $(( $b%$a )) -ne 0 ]; then
        c=$a
        a=$(( $b%$a ))
        b=$c
    else
        break
    fi
done
c=$(( $d/$a ))
echo "GCD: "$a
echo "LCM: "$c