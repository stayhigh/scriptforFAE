#!/bin/bash


echo "downloading the speedtest_cli.py by wget program"
wget https://raw.github.com/sivel/speedtest-cli/master/speedtest_cli.py 
echo "change permission for all users execution"
chmod a+rx speedtest_cli.py
echo "mv speedtest_cli.py into /usr/local"
sudo mv speedtest_cli.py /usr/local/bin/speedtest-cli
echo "change owner to root:root"
sudo chown root:root /usr/local/bin/speedtest-cli

echo "ok..."
