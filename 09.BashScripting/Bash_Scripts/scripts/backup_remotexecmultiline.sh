#!/bin/bash

#read -p 'Enter Command to execute on remote machines: ' COMMAND
echo "Executing COMMANDs on all the WEBNODEs"

for IP in $(cat webnodeIP.txt)
do 
  echo "#############################################################################"
  echo "Executing Command on $IP"
  echo "#############################################################################"
  ssh devops@$IP '
  echo "Executing free -m"
  free -m
  echo "Executing uptime."
  uptime
  '
done

