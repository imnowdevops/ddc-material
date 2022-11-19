#!/bin/bash

# Looping over 1 2 3 4 5
echo "####################################################"
echo "Looping over 1 2 3 4 5"
echo "####################################################"
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done



# Looping over range 1-5
echo "####################################################"
echo "Looping over range 1-5"
echo "####################################################"
for i in {1..5}
do
   echo "Welcome $i times"
done


# Looping over range 1-5 using seq command
echo "####################################################"
echo "Looping over range 1-5"
echo "using seq command"
echo "####################################################"
for i in $(seq 1 5)
do
   echo "Welcome $i times"
done

# Looping and incrementing variable value
echo "####################################################"
echo "Looping and incrementing variable value"
echo "####################################################"
for (( c=1; c<=5; c++ ))
do  
   echo "Welcome $c times"
done

echo "Script exec completed."
