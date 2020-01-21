#!/bin/bash

list_of_direct=($(ls -lRd */ | awk '{print $9}'))

declare -i n=0
declare -i g=1024*1024
#echo ${list_of_direct[*]}


for i in "${list_of_direct[@]}"; do 
    
    list_of_size+=($( find $i/ -type f -printf '%s\n' \
    | awk '{ total += $1 }; END { printf("%d",total) }'))
    
    list_of_size_in_gb+=echo $((${list_of_size[$n]} / $g))
    echo $i
    echo ${list_of_size[$n]}
    echo ${list_of_size_in_gb[$n]}
    n=n+1
done

