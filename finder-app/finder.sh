#!/bin/sh
#Author: Gustavo Barranova
#

ARG1=$1
ARG2=$2

if [ $# != 2 ]
then
	echo Wrong Arguments Numbers
	exit 1
fi

if [ ! -d $ARG1 ]
then
	echo Directory does not exists
	exit 1
fi

NUM_FILES=$( ls $ARG1 | wc -l )
NUM_LINES=$( grep -r $ARG2 $ARG1 | wc -l )

echo "The number of files are $NUM_FILES and the number of matching lines are $NUM_LINES"
