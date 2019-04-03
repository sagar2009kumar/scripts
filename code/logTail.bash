#!/bin/bash

# Author : Sagar Kumar
# Date : 
# Description : This script will log only modified keywords
# Modified

tail -fn0 /var/log/apache2/error.log | while read line
do 
echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline|error|notice"

	if [ $? -eq 0 ]
	then
		echo $line >> /tmp/filtered-messages
	fi

done
