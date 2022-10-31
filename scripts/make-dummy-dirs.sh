#!/bin/bash -ex

# Script to create dummy dirs and populate them with dummy files

mkdir dummy-dirs

# creating dummy files
touch dummy-dirs/file_0{1..9}

# creating dummy directories
mkdir -p dummy-dirs/dir_0{1..9}

# copying all dummy files to all directories
echo dummy-dirs/dir_0{1..9} | xargs -n1 cp dummy-dirs/file_0{1..9}

# deleting dummy files in parent directory
rm dummy-dirs/file_0{1..9}
