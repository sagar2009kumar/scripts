#!/bin/bash

# Author : Sagar Kumar
# Date : 04/03/2019
# Description : Backup /code and /imp
# Modified : 04/03/2019

# Putting the /home/sagar/Code and /home/sagar/Imp into backup.tar

tar cvf /tmp/backup.tar /home/sagar/Code /home/sagar/Imp

# zipping the backup.tar

gzip /tmp/backup.tar

find /tmp/backup.tar.gz -mtime -1 -type f -print

	if [ $? -eq 0 ]
	then
		echo Backup was created;
		echo Archiving Backup;
		serverName=`hostname -I`;
		user=`whoami`;
		cp /tmp/backup.tar.gz /home/sagar/Backup
	else
		echo Backup Failed;
	fi


