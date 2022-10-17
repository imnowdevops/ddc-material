#!/bin/bash

### Learning Decision making in our script.


# Checks if argument is supplied
if [ -z $1 ]
then
  echo "You have not entered any argument, retry."
# If Argument is supplied, validate the argument
else
# If path is a directory.
  if [ -d $1 ]
  then
    echo "File exists and is a Directory."
# IF path is a file.
  elif [ -e $1 ]
  then
    echo "Regular File detected."
# IF invalid input is supplied.
  else
    echo "Please enter a a file path."
  fi
fi
