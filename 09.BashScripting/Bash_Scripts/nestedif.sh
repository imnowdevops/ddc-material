#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -ge 1 ]
then
  if [ $value -eq 1 ]
  then
    echo "Found a Network Interface."
  elif [ $value -gt 1 ]
  then
    echo "Found Multiple Network Interface."
  fi
fi
