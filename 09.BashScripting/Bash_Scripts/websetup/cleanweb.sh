#!/bin/bash

echo "Checking connection for all the machines from webnodeIP.txt file"
for IP in $(cat webnodeIP.txt)
do
  echo "Cleaning on $IP."
  ssh devops@$IP  '
    sudo rm -rf /tmp/website.zip
    sudo rm -rf /var/www/html/*
    sudo yum remove httpd wget unzip -y
    sudo apt remove apache2 -y
  '
done
