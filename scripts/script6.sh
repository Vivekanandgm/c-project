#!/bin/bash

if [ $1 -gt $2 ] && [ $1 -gt $3 ]
   then 
   echo " $1 is grater than $2 and $3 "
fi
if [ $2 -gt $3 ]
   then 
   echo " $2 is grater than $1 and $3 "
   else
   echo " $3 is grater than $1 and $2 "
fi
