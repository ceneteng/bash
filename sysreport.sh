#!/bin/bash

hostvar=$( hostname )

myip=$( ifconfig eth0 | grep "inet addr" )

mymem=$( free )

myproc=$( nproc )

myfile=report_$(date -I).log

echo $hostvar >> $myfile
echo -n $myip >> $myfile
echo -n $mymem >> $myfile
echo -n $myproc >> $myfile