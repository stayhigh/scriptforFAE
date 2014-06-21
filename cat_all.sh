#!/bin/sh

cat_all(){
  echo "cat all file to filename 'newfile.txt'"
  cat $@ > newfile.txt
}

echo num of parameters: $#

if test $# -eq 0
then
  tput setf 4
  echo "[failed] no parameter."
  tput sgr0
else
  echo "processing catencate all files ..."
  cat_all $@
fi

