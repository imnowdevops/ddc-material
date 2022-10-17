#!/bin/bash

# Show me right OS

yum --help > /dev/null 2> /dev/null
if [ $? -eq 0 ]
then
  if grep -q -i "release 6" /etc/redhat-release
  then
    echo "Running Centos 6."
  else
    echo "Running Centos 7."
  fi
else
  a=$(lsb_release -r)
  if echo $a | grep -q -i "14"  
  then
     echo "Running Ubuntu 14."
  elif echo $deb_os | grep -q -i "15"
  then
    echo "Running Ubuntu 15."
  else
    echo "Runnning Ubuntu 16"
  fi
  
fi
