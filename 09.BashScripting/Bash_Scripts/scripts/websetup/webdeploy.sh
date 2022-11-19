#!/bin/bash

echo "Checking connection for all the machines from webnodeIP.txt file"
for IP in $(cat webnodeIP.txt)
do
  echo '########################################################################'
  echo "# Running Websetup on $IP.#"
  echo '########################################################################'
  scp websetupmulti.sh devops@$IP:/tmp/
  scp vars.txt devops@$IP:/tmp/
  ssh devops@$IP  '
  sudo /tmp/websetupmulti.sh >> /tmp/websetup.log 2>> /tmp/websetup.log
  sudo  cat /tmp/websetup.log
  '
  echo "################################################"
  echo "################################################"
done
