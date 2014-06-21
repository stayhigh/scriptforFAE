#!/bin/sh


grep "^deb http://apt.izzysoft.de/ubuntu generic universe" /etc/apt/sources.list
if test $? -ne 0
then
  echo "adding repository URL into /etc/apt/source.list"
  echo "deb http://apt.izzysoft.de/ubuntu generic universe" >> /etc/apt/sources.list
else
  echo "repository URL already in /etc/apt/source.list"
fi

wget http://apt.izzysoft.de/izzysoft.asc -O izzysoft.asc
echo "overwrite izzysoft.asc if exists"
apt-key add izzysoft.asc
sudo apt-get update
sudo apt-get -y install monitorix

echo "running the monitorix ..."
echo "starting the service"
service monitorix start
firefox  http://localhost:8080/monitorix  &
