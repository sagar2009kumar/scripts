#!/bin/bash
# Author
# Date
# Modified
# Description


for i in prefix.*

do
    echo Assigning write permissions to $i
    chmod a+x $i
    sleep i
done
