#!/bin/bash

echo "#####################################################"
date 
#ls /var/run/httpd/httpd.pid &> /dev/null

if [ -f /var/run/httpd/httpd.pid ]
then
   echo "Httpd process is running."
else
   echo "Httpd process is NOT Running."
   echo "Starting the process"
   systemctl start httpd 
   if [ $? -eq 0 ]
   then
      echo "Process started successfully."
   else
      echo "Process Starting Failed, contact the admin."
   fi
fi
echo "#####################################################"
echo 
