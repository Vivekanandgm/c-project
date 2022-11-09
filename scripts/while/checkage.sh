#!/bin/bash

sed '1d' $1 > data1

while read line
do
  age=`echo "$line" | awk -F " " '{print $NF}'`
  if [ $age -gt 20 ]
     then
     echo "$line" |  awk -F " " '{print $2}'
  fi
done < data1
rm data1
