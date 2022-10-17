#!/usr/bin/python3
import os
path = '/tmp/testfile.txt'
if os.path.isdir(path):
  print("It is a directory")
elif os.path.isfile(path):
  print("It is a file.")
else:
  print("file or dir does not exists.")
