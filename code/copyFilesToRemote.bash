#!/bin/bash

# Author : Sagar Kumar
# Date : 04/03/2019
# Modified : 04/03/2019
# Description : This script will copy files to remote hosts


# file for the execution 
a=`cat /home/sagar/abc`

for i in  $a
do
    scp somefile $i:/tmp
done
