#!/bin/bash
find -type d -printf "%p %k KB\n"
echo

#2nd part:
directory="."
count=0
while read line; do

	arg1=$(echo $line)
        x=${arg1:0:2}
	if [[ "$x" == "./" ]]
	then
		echo "$directory $count"
		length=${#line}
		directory=${line:0:length-1}
        	count=0
	else
		filetype=${arg1:0:1}
		if [[ "$filetype" == "-" || "$filetype" == "d" ]]
		then	
			count=$(($count+1))
		fi
	fi
done < <(ls -R -S -h -l)
echo "$directory $count"
