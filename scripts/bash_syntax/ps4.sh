#!/bin/bash

echo "running script will show format as PS4 defined"
echo "set -x is to prefix tracing output"
export PS4='$0.$LINENO+ '
set -x
echo "PS4 demo script"
ls -l /etc/ | wc -l
du -sh ~
