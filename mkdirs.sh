#!/bin/bash/
# --------------------------------------
# Auth: Abhijeet Chopra
# Date: Wed Jun 6, 2018
# Desc: Script to populate dummy dirs with files
# --------------------------------------

touch file_0{1..9}
mkdir dir_0{1..9}
echo dir_0{1..9} | xargs -n1 cp file_0{1..9}
rm file_0{1..9}
