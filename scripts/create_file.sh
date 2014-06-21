#!/bin/sh

create_file(){
  if test $# -ne 2
  then
    tput setf 4
    echo "[failed] need 2 parameters...[now $# paras]"
    tput sgr0
    echo "[Usage] sh create_file.sh <filename> <num_of_MB>"
  else
    echo processing dd if=/dev/zero bs=1024 count="$1"M of=file_"$1"GB
    echo "filename:$1"
    echo "size:$2M"
    dd if=/dev/zero bs=1024 count=$2M of=$1GB
  fi
}

create_file $@
