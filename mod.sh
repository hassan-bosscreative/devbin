#!/bin/bash
WORKING_PATH=/home/hassan/tmp
LINE_TO_INSERT="body content"

for filename in $(ls $WORKING_PATH)
do
	echo $filename
	sed "4 i $LINE_TO_INSERT" $WORKING_PATH/$filename > $WORKING_PATH/$filename-mod
	mv $WORKING_PATH/$filename-mod $WORKING_PATH/$filename
done
