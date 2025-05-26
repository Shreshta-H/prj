#!/bin/bash
num=0
while read line
do
	words=$(echo "$line"|wc -w)
	char=$(echo "$line"|wc -m)
	num=$(expr $num + 1)

	echo "$num:$words:$char"
done<$1
