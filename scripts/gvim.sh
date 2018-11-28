#!/bin/bash

# Luke McCrone
# November 28, 2018
# gvim.sh:  script to replicate gvim command on mac
#   (partially, no multiple files)

FILE=
if [ "$#" -eq 1 ]; then
    if [ ! -e $1 ]; then
        touch $1
    fi
    FILE=$1
fi
open -a macvim $FILE
