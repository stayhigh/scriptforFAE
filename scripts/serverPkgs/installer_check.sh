#!/bin/bash

apt_install(){
  apt-get install wget
}

yum_install(){
  yum install wget
}

echo "Check if the yum installer is installed."
yum

if test $? -ne 0
then
  echo apt-get tools
  apt_install
else
  echo yum tools
  yum_install 
fi


