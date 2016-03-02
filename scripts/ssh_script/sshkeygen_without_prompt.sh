#!/bin/sh

MACOSX="192.168.136.128"
MINT="192.168.136.129"
sudo apt-get -y install sshpass &&
yes |ssh-keygen -f ~/.ssh/id_rsa  -t rsa -N ''
ssh-add
echo "input your password for ssh conneciton"
read SSH_PASSWD
sshpass -p $SSH_PASSWD sudo ssh-copy-id -i ~/.ssh/id_rsa.pub stayhigh@$MINT

