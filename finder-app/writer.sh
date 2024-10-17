#!/bin/sh
#Author: Gustavo Barranova
#

file=$1
text=$2

if [ $# != 2 ]
then
	echo Wrong Arguments Numbers
	exit 1
fi

mkdir -p "${file%/*}" && touch "$file"

echo $text > $file
