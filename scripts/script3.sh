#!/bin/bash

echo -e " SSH is used to login from $1 to $2 without using Password \nPassword less conection is used to login from $1 to $2 without using .pem key or password "

echo " total no of arguments passed = $# "

echo " list of all arguments passwd = $* "

echo " pid of the running process = $$ "

echo " pid of the lst command went into background = $! "

echo " to check the status of last executed command = $?"

echo " script name = $0 "
