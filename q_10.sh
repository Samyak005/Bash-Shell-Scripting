#!/bin/bash

#x=0
#for i in $@
#do
#arr[$x]=i
#x=$( expr $x+1 )
#done
declare -a arr=("$@")
x=$#

#echo $x
#echo ${arr[*]}

#x=1
#while (( test "$x" -ne ""))
#do
#arr[$((x-1))]=$x
#let "x=x+1"
#done

for((i=0;i<x;i++))
do
    for((j=0;j<x-i-1;j++))
    do
        if ((${arr[j]}>${arr[$((j+1))]}))
        then
            temp=${arr[$j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

printf '%s ' "${arr[*]}"
