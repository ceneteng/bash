#!/bin/bash

echo "enter a name to test"
read uName
myTest=$(sudo grep $uname /etc/passwd)

if [ -n $user ] 
then
    echo "User exists"
else
    echo "user does not exist"
