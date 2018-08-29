#!/bin/bash

hostvar=hostname

myip=ifconfig eth0 | grep "inet addr"

mymem=free


echo $hostvar
echo $myip
echo $mymem
echo $myproc