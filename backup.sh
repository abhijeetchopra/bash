# --------------------------------------
# Auth: Abhijeet Chopra
# Date: Tue Jun 5, 2018
# Desc: Backup Script
# --------------------------------------

# debugging settings - switch between true/false
debug="false"

# storing current working directory
prev_wd=$(pwd)

# chanding directory to this file's parent dir
cd "$(dirname "$0")"

# source
src="./"     # all files in current directory

# destination
dest="./"   # current directory

# archive_name
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
archive_name="Backup_"$timestamp".tar"

# printing initial status messages
if [ $debug == 'true' ]
then
	echo
	echo "Initiating Backup..."
	echo
fi

# creating tarball
tar --exclude='Backup*.tar' -cf $dest/$archive_name -C $src .


# printing exiting message
if [ $debug == 'true' ]
then
	echo "File \"$archive_name\" created."
	echo
	echo "Backup Complete."
	echo
fi

# restoring previous working directory
cd "$prev_wd"
