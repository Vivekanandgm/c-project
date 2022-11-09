#!/bin/bash

 echo "enter the file name"
 read name

if [ -s $name ]
   then
   echo "file is non empty"
   else
   echo "file is empty"
fi
