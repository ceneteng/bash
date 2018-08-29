#!/bin/bash

hostvar=$( hostname )

myip=$( ifconfig eth0 | grep "inet addr" )

mymem=$( free )

myproc=$( nproc )

myfile=report_$(date -I).log

echo -e $hostvar >> $myfile
echo -e $myip >> $myfile
echo -e $mymem >> $myfile
echo -e $myproc >> $myfile