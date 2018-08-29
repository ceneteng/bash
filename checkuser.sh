#!/bin/bash

echo "enter a name to test"
read uName
myTest=$(sudo grep $uName /etc/passwd)
echo $myTest

#if [ -n $user ] 
#then
#    echo "User exists"
#else
#    echo "user does not exist"
