#!/bin/bash

size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%/ /g'`

echo -e " Hii \nYour disk size exceeding 90% please take appropreate action" > data1

if [ $size -gt 90 ]
then
   cat data1 | mail -s "subject" -c "email1 @gmail.com" abc@gmail.com,def@gmail.com
fi

rm data1
