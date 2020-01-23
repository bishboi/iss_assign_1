#!/bin/bash

#here "2> /dev/null" redirects all the error messages of the particular command to null
#taking all the disks of type ext4 | removing the header file | taking only the name of the file ie argumen 1($1)
list_of_disks=($( df | sed 1d | awk '{printf("%s\n",$1)}' ))

list_of_type=($( df -T | sed 1d | awk '{printf("%s\n",$2)}' ))

#taking all the disks of type ext4 | removing the header file | removing % sign | taking only the %use of the file ie argumen 5($5)
list_of_diskspace=($( df | sed 1d | sed 's/%//' | awk '{printf("%d\n",$5)}'))

declare -i n=0 

for i in "${list_of_disks[@]}"; do
    if [[ ${list_of_type[$n]} == "tmpfs" ]];
    then
        n=n+1 
        continue
    fi
    if [ ${list_of_diskspace[$n]} -gt $2 ];
    then
        tput setaf 1; echo "CRITICAL,"$i","${list_of_diskspace[$n]}"%"

    elif [ ${list_of_diskspace[$n]} -ge $1 ];
    then
        tput setaf 3; echo "WARNING,"$i","${list_of_diskspace[$n]}"%"

    else
        tput setaf 4; echo "OK,"$i","${list_of_diskspace[$n]}"%"
    
    fi
    n=n+1 
done

