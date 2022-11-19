#!/bin/bash

c=1

while true
do
  echo "Looping...."
  echo "Value of c is $c."
  c=$(( $c + 1 ))
done

echo 
echo "out of the loop"
