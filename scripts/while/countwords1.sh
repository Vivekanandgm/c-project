#!/bin/bash
 echo "Enter the file name"

read name

num=1

while read line
do
   words=`echo "$line" | wc -w`
   echo "$num  $line $words"
   num=`expr $num + 1`
done < $name
