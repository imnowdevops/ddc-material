#!/bin/bash

# OR Operation
if [[ -e $1 ]] || [[ -d $1 ]]
then
  echo "You have entered a file or dir path, taking its backup."
  tar -czvf bakupfiledir.tgz $1
elif [[ -z $1 ]]
then
  echo "You have not entered a file/dir path, Please try again."
else
  echo "Invalid input detected, please try again."
fi
