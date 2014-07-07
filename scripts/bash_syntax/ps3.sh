#!/bin/bash

echo "export PS3 is for select loop prompt"
export PS3="your choice>"

select i in mon tue wed break
do
  case $i in
    mon) echo monday;;
    tue) echo tuesday;;
    wed) echo wednesday;;
  break) break;;
  esac
done

echo "$0 done"
