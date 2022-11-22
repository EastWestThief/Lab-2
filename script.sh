#!/bin/bash

cd $1
file_with_min_size=`ls -Sr | head -1`
myfilesize=`stat -c %s $file_with_min_size`

mv $file_with_min_size $2
cd $2
for FILE in *; 
do  
	currentfilesize=`stat -c %s $FILE`
		if [ "$currentfilesize" -gt "$myfilesize" ]; then
		echo "$FILE > $file_with_min_size" >> "Resultsh.txt"
	elif [ "$currentfilesize" -lt "$myfilesize" ]; then
		echo "$FILE < $file_with_min_size" >> "Resultsh.txt"
	else
		echo "$FILE = $file_with_min_size" >> "Resultsh.txt"
	fi
done





