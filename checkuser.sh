#!/bin/bash

echo "enter a name to test"
read uName
myTest=$(sudo grep $uName /etc/passwd)
echo $myTest

if [ $myTest -n ] 
then
    echo "User exists"
else
    echo "user does not exist"
fi
