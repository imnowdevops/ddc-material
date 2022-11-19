#!/bin/bash
sudo systemctl stop httpd
sudo rm -rf /var/www/html/*
sudo yum remove httpd wget unzip -y

