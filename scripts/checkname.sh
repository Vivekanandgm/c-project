#!/bin/bash

 echo "enter the name to check"

 read name

if [ -L $name ]
   then
   echo "$name is a link"
elif [ -d $name ]
   then
   echo "$name is a directory"
elif [ -f $name ]
   then
   echo "$name is a file"
   else
   echo "$name does not exist"
fi
