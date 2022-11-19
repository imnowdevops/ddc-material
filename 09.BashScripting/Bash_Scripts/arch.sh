#!/bin/bash

echo "Archiving $1"
tar -czvf scripts.tar.gz $1

echo "Moving the archive to $2"
mv scripts.tar.gz $2

echo "Backup of $1 completed"

