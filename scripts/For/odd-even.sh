#!/bin/bash
number=1
for i in 5 10 3
do
  status=`expr $number % 2`
  if [ $status -eq 0 ] ; then
     echo "$i is even" 
  else
     echo "$i is odd" 
  fi
     number=`expr $number + 1`
done
