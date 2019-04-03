#!/bin/bash

# Author : Sagar
# Date : 04/03/2019
# Modified : 04/03/2019
# Description : This file will just use simple count

echo "How many files do you want ??";

read count;

# Not doing $(1..$t) because 1.. only works with integer not with the variable 

for i in $(seq 1 $count)
    do 
        echo "Please enter the file name";
        read fileName;
        touch $fileName;
        
        if [ $? -eq 0 ] 
        then
            echo $fileName has been created;
        else
            echo Unable to create the file $fileName;
        fi
    done


