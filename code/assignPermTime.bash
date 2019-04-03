#!/bin/bash
# Author
# Date
# Modified
# Description

total=`ls -l prefix* | wc -l`

echo It will take $total seconds to give the write permissions

for i in prefix.*
do
    echo Assigning write permissions to $i
    chmod a+x $i
    sleep i
done
