#!/bin/bash

# Author : Sagar Kumar
# Date : 04/03/2019
# Modified : 04/03/2019
# Description : This is the script of logged in user

# gives only first three columns rather than whole sentence

# NOT WORKING

# today=`date | awk '{print $1,$2,$3}'`

# It will give only user 

# last | grep "$today" | awk '{print $1}'

echo "Please enter day (e.g. Mon)"
read d
echo
echo "Please enter month (e.g. Aug)"
read m
echo
echo "Please enter date (e.g. 28)"
read da
echo

last | grep "$d $m  $da"
