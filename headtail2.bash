#!/bin/bash
if [ ! -f $1 ]; then
	echo "No file found"
	exit 1
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]]; then
	echo "Second argument must be an integer"
	exit 1
fi
if [ $(wc $1 | awk '{print $1}') -lt $2 ] || [ $(wc $1 | awk '{print $1}') -lt $3 ]; then
        echo "File too short for specified lines"
	exit 1
fi	
echo Head
head -$2 $1
echo Tail
if [ $# -eq 3 ]; then
	tail -$3 $1
else
	tail -$2 $1
fi
