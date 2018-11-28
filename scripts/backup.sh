#!/bin/bash

# Luke McCrone
# Simple backup script (backs single file up with current time extension)

if [ -z $1 ]; then
    echo "No file name specified"
    exit 1
elif [ ! -e $1 ]; then
    echo "File $1 does not exist"
    exit 1
fi
BACKUP_FILE=$1.$(date +%Y%m%d%H%M%S)
cp $1 $BACKUP_FILE
echo "File $1 copied to $BACKUP_FILE"
exit 0
