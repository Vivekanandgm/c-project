#!/bin/bash

if [ $# -gt 1 ]
   then
   echo "Print only one argument"
   exit 1
fi

num=$1
fact=1
while [ $num -gt 0 ]
do
      fact=`expr $fact \* $num`
      num=`expr $num - 1`
done
      echo "factorial of $1 is $fact"
