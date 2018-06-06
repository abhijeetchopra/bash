#!/bin/bash/
# --------------------------------------
# Auth: Abhijeet Chopra
# Date: Wed Jun 6, 2018
# Desc: Script to populate dummy dirs with files
# --------------------------------------

# creating dummy files
touch file_0{1..9} 

# creating dummy directories
mkdir dir_0{1..9}

# copying all dummy files to all directories 
echo dir_0{1..9} | xargs -n1 cp file_0{1..9}

# deleting dummy files in parent directory
rm file_0{1..9}
