#!/bin/bash

echo "Enter the Number"

read Number
i=2

while [ $Number -lt $i ]
do

status=`expr $Number % $i`
	if [$status -eq 0 ]
	then
		echo "$Number is not a Prime Number"
		ehco "Since it is divisible by $i"
		exit
	fi
       i=`expr $i=1`

done

echo "$Number is a Prime Number"
