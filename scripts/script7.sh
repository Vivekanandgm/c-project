#!/bin/bash

if [ $# -ne 3 ]
   then
   echo "pass only 3 arguments this script"
   exit 1
fi

if [ $1 -eq $2 ] && [ $1 -eq $3 ]
   then
   echo "All numbers are equal"
   exit 0
fi

if [ $1 -gt $2 ] && [ $1 -gt $3 ]
   then 
   echo " $1 is grater than $2 and $3 "
   exit 0
fi 

if [ $2 -gt $1 ] && [ $2 -gt $3 ]
   then 
   echo " $2 is grater than $1 and $3 "
   else
   echo " $3 is grater than $1 and $2 "
fi
