#!/bin/bash

read -p 'Enter Command to execute on remote machines: ' COMMAND
echo "Executing $COMMAND on all the WEBNODE's"

for IP in $(cat webnodeIP.txt); 
do 
  echo "#############################################################################"
  echo "Executing Command on $IP"
  echo "#############################################################################"
  ssh devops@$IP $COMMAND
done

