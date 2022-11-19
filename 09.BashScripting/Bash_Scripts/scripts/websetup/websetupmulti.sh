#!/bin/bash

: ' This script will setup sloopa website on
CENTOS 7.5 HTTPD service.
'
source /tmp/vars.txt
# Redirecting all the output/Suppressing output of yum command.
yum --help > /dev/null 2> /dev/null
if [ $? -eq 0 ]
then
  echo "################################################################"
  echo "RedHat based system detected."
  echo "################################################################"
  SVC=httpd
  PACKS='httpd wget unzip'

# Setup packages
  echo
  echo
  echo "Installing Packages"
  yum install $PACKS -y
  echo "################################################################"

# Start & Enable Service
  echo
  echo
  echo "Starting and Enabling Service"
  systemctl start $SVC
  systemctl enable $SVC
  echo "################################################################"

# Copy website data to apache Doc Root Dir.
  echo
  echo
  echo "Copying website data"
  cd /tmp && wget -O website.zip $WEBURL
  cd /tmp/ && unzip -o website.zip
  cp -r /tmp/$DIRNAME/* /var/www/html/


  echo
  echo
  echo "Restarting Service"
# Restart SERVICE
  systemctl restart $SVC
  echo "################################################################"

else
  echo "################################################################"
  echo "Debian based system detected."
  echo "################################################################"
  SVC=apache2
  PACKS='apache2 wget unzip'

# Setup packages
  echo
  echo
  echo "Installing Packages"
  apt install $PACKS -y
  echo "################################################################"

# Start & Enable Service
  echo
  echo
  echo "Starting and Enabling Service"
  systemctl start $SVC
  systemctl enable $SVC
  echo "################################################################"

# Copy website data to apache Doc Root Dir.
  echo
  echo
  echo "Copying website data"
  cd /tmp && wget -O website.zip $WEBURL
  cd /tmp/ && unzip  -o website.zip
  cp -r /tmp/$DIRNAME/* /var/www/html/

  echo "################################################################"

  echo
  echo
  echo "Restarting Service"
# Restart SERVICE
  systemctl restart $SVC
  echo "################################################################"
fi

