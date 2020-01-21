#!/bin/bash
declare -i a=$1
ans=""
while [ $a -ge 1000 ];
do
    a=a-1000
    ans+="M"
done
while [ $a -ge 900 ]
do
    a=a-900
    ans+="CM"
done
while [ $a -ge 500 ]
do
    a=a-500
    ans+="D"
done
while [ $a -ge 400 ]
do
    a=a-400
    ans+="CD"
done
while [ $a -ge 100 ]
do
    a=a-100
    ans+="C"
done
while [ $a -ge 90 ]
do
    a=a-90
    ans+="XC"
done
while [ $a -ge 50 ]
do
    a=a-50
    ans+="L"
done
while [ $a -ge 40 ]
do
    a=a-40
    ans+="XL"
done
while [ $a -ge 10 ]
do
    a=a-10
    ans+="X"
done
while [ $a -ge 9 ]
do
    a=a-9
    ans+="IX"
done
while [ $a -ge 5 ]
do
    a=a-5
    ans+="V"
done
while [ $a -ge 4 ]
do
    a=a-4
    ans+="IV"
done
while [ $a -ge 1 ]
do
    a=a-1
    ans+="I"
done
echo $ans