#!/bin/bash

$hostvar = hostname

$myip = /sbin/ifconfig eth0 | grep "ip_addr"

$mymem = free

$myproc = nproc

echo $hostvar
echo $myip
echo $mymem
echo $myproc