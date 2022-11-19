#!/bin/bash

#read -p 'Enter Command to execute on remote machines: ' COMMAND
echo "Executing COMMANDS on all the WEBNODE's"

for IP in $(cat webnodeIP.txt); 
do 
  echo "#############################################################################"
  echo "Executing Command on $IP"
  echo "#############################################################################"
  ssh devops@$IP '
    echo "Executing free -m."
    free -m
    echo
    echo "Executing uptime."
    uptime
    echo
    echo "Executing df -h"
    df -h
    echo
  '
done

