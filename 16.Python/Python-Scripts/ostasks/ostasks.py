#!/usr/bin/python3
import os

userlist = ["alpha", "beta", "gamma"]

print("Adding users to system")
print("############################################################################################")

# Loop to add user from userlist
for user in userlist:
  exitcode = os.system("id {}".format(user) ) 
  if exitcode != 0:
    print("User {} does not exist. Adding it.".format(user))
    print("##############################################")
    print()
    os.system("useradd {}".format(user))  
  else:
    print("User already exist, skipping it.")
    print("##############################################")
    print()

# Condition to check if group exists or not, add if not exist.
exitcode = os.system("grep science /etc/group")
if exitcode != 0:
  print("Group science does not exist. Adding it.")
  print("##############################################")
  print()
  os.system("groupadd science")
else:
  print("Group already exist, skipping it.")
  print("##############################################")
  print()


for user in userlist:
  print("Adding user {} in the science group".format(user))
  print("##############################################")
  print
  os.system("usermod -G science {}".format(user))

print("Adding directory")
print("##############################################")
print()

if os.path.isdir("/opt/science_dir"):
  print("Directory already exist, skipping it")
else:
  os.mkdir("/opt/science_dir")

print("Assigning permission and ownership to the directory.")
print("##############################################")
print()
os.system("chown :science /opt/science_dir")

os.system("chmod 770 /opt/science_dir")










