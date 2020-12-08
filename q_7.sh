#!/bin/bash
echo "Enter name:"
read name
echo "Enter DOB:"
read mmYr
#mm=${mmYr#*'-'}
#year=${mmYr%-*}
year=$(echo $mmYr | awk -F"-" '{print $2}')
mm=$(echo $mmYr | awk -F- '{print $1}')

#mm=${mmYr:0:2}
#year=${mmYr:3:4}
#echo "Month: $mm  Year: $year"

currentMonth=$(date +%m)
currentYear=$(date +%Y)

AgeMonths=$(($(($(($currentYear-$year))*12))+$(($currentMonth-$mm))))
echo "Hello $name your age is $AgeMonths months."

#read -p 'username :  ' user_var
#read -sp 'password :  ' pass_var
#echo "username : $user_var"
#echo "password : $pass_var"

#echo "Enter names :"
#read -a names
#echo "Names : ${names[0]}, ${names[1]}"


