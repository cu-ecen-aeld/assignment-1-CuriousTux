#!/bin/sh

writefile=$1
writestr=$2
dirpath=$(dirname "$writefile")

if [ $# -lt 2 ]; then
	echo "Invalid input arguments entered!"
	exit 1
fi

mkdir -p $dirpath
echo "$writestr" > $writefile

if [ $? -eq 0 ]; then
	echo "File created and writed successfully."
	exit 0
else
	echo "File creation failed"
	exit 1
fi

