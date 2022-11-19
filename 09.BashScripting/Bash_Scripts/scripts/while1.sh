#!/bin/bash

c=1

while [ $c -le 5 ]
do
  echo "Looping...."
  echo "Value of c is $c."
  c=$(( $c + 1 ))
done

echo 
echo "out of the loop"
