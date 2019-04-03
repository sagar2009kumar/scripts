#!/bin/bash

# Author : Sagar Kumar
# Date : 04/03/2019
# Modified : 04/03/2019
# Description : This script will check whether the file exists or not


FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake"

echo

for file in $FILES
    do
        if [ ! -e $file ]
        then 
            echo $file do not exists.
        fi
    done
