#!/bin/sh

#put quote to avoid the problem of string with spaces
for files in "$@"
do
  echo filesname:$files
done
