#!/bin/bash

### Script to Setup Tomcat 8 

# Source variable for script to use.
source vars.txt
apt install openjdk-8-jdk wget -y
sudo groupadd tomcat
sudo useradd -M -s /bin/nologin -g tomcat -d $TOMCAT_HOME tomcat
wget $DOWNLOAD_URL
sudo mkdir -p $TOMCAT_HOME
sudo tar xvf apache-tomcat-8*tar.gz -C $TOMCAT_HOME --strip-components=1
cd $TOMCAT_HOME
#sudo chgrp -R tomcat $TOMCAT_HOME
sudo chmod -R g+r conf
#sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo chown tomcat:tomcat -R $TOMCAT_HOME/*
sudo cat $SVCFILE > /etc/systemd/system/tomcat.service
sudo chmod a+x /etc/systemd/system/tomcat.service
sleep 5
sudo systemctl daemon-reload
sleep 5
sudo systemctl start tomcat
sleep 5
sudo systemctl status tomcat
sleep 5
sudo systemctl enable tomcat
