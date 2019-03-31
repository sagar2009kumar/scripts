#!/bin/bash

# Author: Sagar Kumar
# 02/03/2019
# Description: This script will pull only Error messages from /var/log/apache2/error.log
# Modified : 02/03/2019

# it will pull only the notice messages
echo "------------------- Printing the notice messages -----------------"
grep -i notice /home/sagar/Code/Scripts/error.log 
echo "------------------- Ending of the notice messages ----------------"
echo
echo
# it will pull only the error messages
echo "------------------- Printing the error messages -----------------"
grep -i error /home/sagar/Code/Scripts/error.log 
echo "------------------- Ending of the error messages ----------------"

# For getting the aug 27 use ./pull-data.bash | grep "Aug 27" | wc -l

# ./pull-data.bash | grep "Mar 03"

# uptime
