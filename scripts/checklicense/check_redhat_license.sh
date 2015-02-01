#!/bin/bash
# Author: hutuworm (http://hutuworm.blogspot.com)
# RELEASED UNDER GPLv2.

for PACKAGE in `rpm -qa`
do
    NOTICE=`rpm -qi $PACKAGE | grep License | grep -iE 'red ?hat'`
    if [ ! "$NOTICE" = "" ]
    then
        echo $PACKAGE ":" $NOTICE ;
    fi
done
