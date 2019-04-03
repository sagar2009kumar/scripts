#!/bin/bash

# Author : Sagar Kumar
# Date Created : 04/03/2019
# Date Modified : 04/03/2019
# This script will delete the file older than 90 days
clear;
echo "SCRIPT FOR DELETING THE FILE OLDER THAN 90 DAYS ";
echo
echo "Creating the file with the older time stamp ";
echo

touch -d "Thu, 1 March 2018 12:30:00" oldFile3.txt oldFile1.txt oldFile2.txt oldFile4.txt

# check if the file has been created successfully

    if [ $? -eq 0 ]
    then
        echo "File has been created successfully.\n";
        echo "Current Files are :: ";
        ls -ltr;
        echo
    else
        echo "Error in creating the file. Exiting. ";
        exit $?;
    fi

echo "Files older than 90 days are :: ";
echo
echo

curDir=`pwd`;

find $curDir -mtime +90 -exec ls -l {} \;

echo
echo
echo "Deleting the file older than 90 days"
find $curDir -mtime +90 -exec rm {} \;

echo "Files after deleting the older file"
ls -ltr

# For renaming of the files older than 90 days

# find $curDir -mtime +90 -exec mv {} {}.old \;

echo
echo
echo "If you want to rename the older file please see the files comment";
