#!/bin/bash
u=$1
let "x=$u%10"
if [[ x -eq 1 ]]
then
 pi=I
elif [[ x -eq 2 ]]
then
 pi=II
elif [[ x -eq 3 ]]
then
 pi=III
elif [[ x -eq 4 ]]
then
 pi=IV
elif [[ x -eq 5 ]]
then
 pi=V
elif [[ x -eq 6 ]]
then
 pi=VI
elif [[ x -eq 7 ]]
then
 pi=VII
elif [[ x -eq 8 ]]
then
 pi=VIII
elif [[ x -eq 9 ]]
then
 pi=IX
fi

let "t=(($u%100)-($u%10))/10"
if [[ t -eq 1 ]]
then
 pd=X
elif [[ t -eq 2 ]]
then
 pd=XX
elif [[ t -eq 3 ]]
then
 pd=XXX
elif [[ t -eq 4 ]]
then
 pd=XL
elif [[ t -eq 5 ]]
then
 pd=L
elif [[ t -eq 6 ]]
then
 pd=LX
elif [[ t -eq 7 ]]
then
 pd=LXX
elif [[ t -eq 8 ]]
then
 pd=LXXX
elif [[ t -eq 9 ]]
then
 pd=XC
fi

let "y=($u-($u%100))/100"
if [[ y -eq 1 ]]
then
 pe=C
elif [[ y -eq 2 ]]
then
 pe=CC
elif [[ y -eq 3 ]]
then
 pe=CCC
elif [[ y -eq 4 ]]
then
 pe=CD
elif [[ y -eq 5 ]]
then
 pe=D
elif [[ y -eq 6 ]]
then
 pe=DC
elif [[ y -eq 7 ]]
then
 pe=DCC
elif [[ y -eq 8 ]]
then
 pe=DCCC
fi

printf "$pe$pd$pi"
