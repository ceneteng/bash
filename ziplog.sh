#!/bin/bash

hosts=$(cat ~/bash/hosts.txt)


grep display /var/log/system.log >> ~/1hour.log

if [ -e ~/1hour.log ]
then
    zipfile=$(tar -cvf ~/1hourlog.tar.gz ~/1hour.log)
    for host in $hosts
    do
    scp -i ~/Downloads/fullstack.pem ~/1hourlog.tar.gz ec2-user@$host:
    done
else
    echo "The log file was not created"
fi

