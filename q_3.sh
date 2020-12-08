#!/bin/bash
a=$1
ByteStart="64"
count=0
while read line; do
        arg1=$(echo $line | awk '{print $1}')
        x=${arg1:0:2}
        if [[ "$x" == "$ByteStart" ]]
        then
		count=$(($count+1))
                echo $count"." $line
        else
                echo $line
        fi
done < <(ping google.com -c $a)

