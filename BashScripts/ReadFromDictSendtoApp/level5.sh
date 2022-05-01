#!/bin/bash
touch level5output.txt
File="dictionary.txt"
Lines=$(cat $File)
for Line in $Lines
do
	echo "$Line" | python3 level5.py >> level5output.txt
done
cat level5output.txt | grep picoCTF
