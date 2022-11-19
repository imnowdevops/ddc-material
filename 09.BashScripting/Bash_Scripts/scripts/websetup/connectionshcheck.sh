#!/bin/bash

echo "Checking connection for all the machines from webnodeIP.txt file"
for IP in $(cat webnodeIP.txt)
do
  ssh devops@$IP hostname
  if [ $? -eq 0 ]
  then
    echo "$IP is connected over SSH."
    echo "##################################################"
  else
    echo "$IP Not connected over SSH."
    echo "##################################################"
  fi  
done
