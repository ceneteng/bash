#!/bin/bash

hostvar=$( hostname )

myip=$( ifconfig eth0 | grep "inet addr" )

mymem=$( free )

myproc=$( nproc )

myfile=report_$(date -I).log

echo "$hostvar\n" >> myfile
echo "$myip\n" >> myfile
echo "$mymem\n" >> myfile
echo "$myproc\n" >> myfile