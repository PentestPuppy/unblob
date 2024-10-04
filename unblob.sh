#!/bin/bash

# Made by Trash Puppy 
#	2024
#

echo -e ":--          Un-Blob         --:"
blob=$1

if [[ -z "$1" ]]; then
	echo ""
	echo ":-- What file do you want to unblob?: "
	read -a blob
fi

echo ""
echo -e ":-- Unblobbing \033[32m$blob\033[0m into unblobbed.txt"

# Read each whitespace separated word from blob into new file:
while IFS= read -r -d ' ' item; do
	echo $item >> unblobbed.txt
done < $blob

echo ""
echo ':-- Done'
