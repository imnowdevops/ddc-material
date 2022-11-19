#!/bin/bash

BAKUPFILE=scripts_bakup.tar.gz

echo "Welcome USER $USER."
echo "We are running script on $HOSTNAME"
echo "####################################################"

echo "You have passed $# arguments"
echo "####################################################"

echo "Below mentioned the arguments that you passed:"

echo $@
echo "####################################################"



echo "Taking backup of $1"

echo "Archiving $1"
tar -czvf $BAKUPFILE $1
echo "Exit Code of arhiving is $?"
echo "####################################################"


mv $BAKUPFILE $2
echo "Exit Code of moving backup is $?"
echo "####################################################"

echo "Archive moved to $2"

echo "Process ID of the current script is $$."
#sleep 5
echo "####################################################"
echo "Backup Completed Successfully."

sleep 5
echo "It took $SECONDS seconds time."
