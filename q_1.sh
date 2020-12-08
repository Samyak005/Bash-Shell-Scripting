#!/bin/bash
a=$1
b=$2

#df -H | awk '{ if($5<$warning_level) print "\033[34mOK,"$1","$5}'
#df -H | awk '{ if( $5>$warning_level && $5<$critical_level) print "\033[33mWARNING,"$1","$5}'
#df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ if($5>$critical_level) print "\033[31mCRITICAL,"$1","$5}'

#df -P | grep sda | awk '{ if(0+$5<$a) print "\033[34mOK,"$1","$5; else if(0+$5>$b) print "\033[31mCRITICAL,"$1","$5; else print "\033[33mWARNING,"$1","$5}'

#df -P | grep sda | awk '{if (0+$5<$x) printf ("\033[34m"); printf("OK,%s,%s\n",$1,$5); printf("\033[0m") }'
#df -P | grep sda | awk '{if ( $5>$x && $5<$y) printf ("\033[33m");printf("WARNING,%s,%s\n",$1,$5); }'
#df -P | grep sda | awk '{if ($5>$y) printf ("\033[31m");printf("CRITICAL,%s,%s\n",$1,$5); printf("\033[0m") }'

while read line; do
        path=$(echo $line | awk '{print $1}')
        use_percent=$(echo $line | awk '{print $5}')
        number=${use_percent%?}
        
	if [[ $number -lt $a ]]
	then
        	echo -e "\e[34mOK,$path,$use_percent"
	elif [[ $number -gt $b ]]
	then
        	echo -e "\e[31mCRITICAL,$path,$use_percent"
	else
        	echo -e "\e[33mWARNING,$path,$use_percent"
	fi

done < <(df -h | grep -vE '^Filesystem|tmpfs|cdrom')

#df -H | grep sda | awk '{print ("\033[34m "$1"something in colour";}'

#df -H | grep sda| awk '{ print $5 " " $1 }' | while read output;
#do
#  echo $output
#  usep=$(echo $output | awk '{ print $5}' | cut -d'%' -f1)
#  if [ $usep -ge 90 ];
#  then
#    echo $usep
#  fi
#done
#echo
#df | grep sda | awk '{print $5 }' | tail -n 1 | sed 's/%//'
#echo
#df | grep sda | awk '{print $5}' | cut -d '%' -f 1
