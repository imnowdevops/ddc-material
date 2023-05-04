#!/bin/bash

# And Operation
if [[ -n $1 ]] && [[ -d $1 ]]
then
  echo "You have entered a dir path, taking its backup."
  tar -czvf bakupdir.tgz $1
elif [[ -n $1 ]] && [[ -e $1 ]]
then
  echo "You have entered a file path, taking its backup."
  tar -czvf bakupfile.tgz $1
elif [[ -z $1 ]] 
then
  echo "You have not entered any input."
else
  echo "You have entered an Invalid input. Please try again."
fi
