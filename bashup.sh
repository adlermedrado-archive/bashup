#!/bin/bash

if [ $# -lt 2 ] ; then
  echo "Usage: param1 must be the directory to be backed up and param2 the directory to store the backup tarball"
  exit 0
fi

# Constants
CURRENT_DATE=$(date +"%d_%m_%Y_%H_%M_%S")

#First param - origin directory
ORIGIN_DIR=$1

#Second param - final directory
FINAL_DIR=$2

# Creating tarball
echo "Creating tarbal... please wait"
tar cjf "$FINAL_DIR/$CURRENT_DATE.tar.bz2" $ORIGIN_DIR

echo "Done..."