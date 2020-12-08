#!/bin/bash
echo "Please enter your SGPA:"
read SGPA
y=16
x=`echo "$y-$SGPA" | bc`
if [[ $(echo "$SGPA>=5"|bc) -eq 0 ]]
 then
{
	 echo "PROBATION"
      	echo "AGLE SEM PHOD DENGE"
}
else
{
 if [[ $(echo "$x>10"|bc) -eq 0 ]]
	then echo "You need SGPA "$x" next sem"
 else echo "AGLE SEM PHOD DENGE"
 fi
}
fi

