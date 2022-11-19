#!/bin/bash

MYUSERS="alpha beta gamma"

for usr in $MYUSERS
do 
   echo "Adding user $usr."
   useradd $usr
   id $usr
   echo "#####################################"
done

