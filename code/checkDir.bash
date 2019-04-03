#!/bin/bash

# Author : Sagar Kumar
# Date : 04/03/2019
# Description : This script will find directories without users
# Modified : 04/03/2019

cd /home

for DIR in * 

do 	
	# Scan the directory from the /home to /etc/passwd

	CHK=$(grep -c "/home/$DIR" /etc/passwd)

	if [ $CHK -ge 1 ]
	then 
		echo $DIR is assigned to a user
	else
		echo $DIR is not assigned to a user
	fi
done
