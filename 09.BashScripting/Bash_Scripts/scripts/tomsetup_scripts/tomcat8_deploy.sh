#!/bin/bash

for IP in `cat hostIP.txt`
do
  tar -czf tom_package.tgz tom_package
  scp tom_package.tgz devops@$IP:/tmp/
  ssh devops@$IP  '
  sudo tar xzvf /tmp/tom_package.tgz -C /tmp/
  sudo /tmp/tom_package/tomcat8_setup.sh >> /tmp/tomsetup.log 2>> /tmp/tomsetup.log
  sudo  cat /tmp/tomsetup.log
  '
  echo "################################################"
  echo "################################################"
done
