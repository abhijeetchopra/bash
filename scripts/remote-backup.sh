#!/bin/bash

# This script takes a timestamped tarball of the directory it is in and places
# it in a backups directory within the working directory

# set debugging flag - accepted values: true|false
debug="true"

# function to print debug message
echodebug () {
	if [ $debug == 'true' ]
	then
		echo "$1"
		echo
	fi
}

echodebug "Initiating Backup..."

# generate timestamped archive name
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
archive_name="Backup_"$timestamp".tar"

# create backup directory if doesn't exist
if [ ! -d ./Backups ]; then
  echodebug "Backup directory not found. Creating it..."
  mkdir -p ./Backups;
fi

# create tarball
echodebug "Creating tarball..."

tar \
--exclude='backup.sh'   `# exclude this backup script itself` \
--exclude='Backups'     `# exclude the backups directory` \
-cf ./Backups/$archive_name -C ./ .

echodebug "Backup Complete."

echodebug "Listing Backups..."

if [ $debug == 'true' ]
then
	ls -1h Backups/
fi
