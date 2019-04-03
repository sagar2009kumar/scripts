#!/bin/bash

# Author : Sagar Kumar
# Date : 04/03/2019
# Modified : 04/03/2019
# Description : This script will rename files ending with .txt

for filename in *.txt
do
    mv $filename ${filename%.txt}.none
done
