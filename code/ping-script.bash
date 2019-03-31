#!/bin/bash

# Author : Sagar Kumar
# Date : 08/08/2020
# Modified : 08/08/2020

# Ping only one time 
# ping -c1 192.168.1.218

# If you do not want to see the output of the ping on screen
ping -c1 192.168.1.218 &> /dev/null

    if [ $? -eq 0 ]
    then
        echo OK
    else
        echo NOT OK
    fi
