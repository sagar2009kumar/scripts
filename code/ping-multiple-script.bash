#!/bin/bash

# Author : Sagar Kumar
# Date : 08/08/2020
# Description : This script will ping multiple remote hosts and notify

curDir=`pwd`
hostFile=$curDir/myhost.txt

for ip in $(cat $hostFile)

do
    ping -c1 $ip &> /dev/null

    if [ $? -eq 0 ]
    then
        echo $ip is OK
    else
        echo $ip is NOT OK
    fi
done


# install the crontab using the command crontab -e (for edit)

# you can check the crontab using the command crontab -l

# in the crontab 
# First letter is minute
# Second letter is hour
# third letter is day(month)
# fourth letter is month
# fifth letter is day(week)

# mail -s "Connectivity Status" sagar2009kumar@gmail.com 
# here s is for the subject
