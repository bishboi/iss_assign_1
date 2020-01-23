#!/bin/bash
function gcd (){
    a=$1
    b=$2
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

}
function lcm ()
{
    a=$1
    b=$2
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
echo "LCM: "$c
}
echo "Enter A:"
read a
echo "Enter B:"
read b
gcd $a $b
lcm $a $b