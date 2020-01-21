#!/bin/bash
echo "Enter name:"
read name
echo "Enter DOB"
read dob
presentmonth=$(date +%m)
presentyear=$(date +%Y)

#echo "Hello "$name
dobarr=(${dob//-/ })
month=$( echo "$presentmonth - ${dobarr[0]}" | bc)
year=$( echo "$presentyear - ${dobarr[1]}" | bc)
yearmonth=$( echo "$year * 12" | bc)
total=$( echo "$yearmonth + $month" | bc)
echo "Hello $name your age is $total months."