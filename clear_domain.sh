#!/bin/bash

# Finds and removes all instances of the current domain name
# under /etc/hosts and /etc/sysconfig/network

DOMAIN=`hostname | awk -F. '{$1="";OFS="." ; print $0}' | sed 's/^.//'`
HOST=`hostname -s`

echo "Clearing domain: $DOMAIN"
hostname "$HOST"


for f in /etc/hosts /etc/sysconfig/network
do
    echo "Clearing $DOMAIN from $f"
    sed -i 's/.'"$DOMAIN"'//g' $f
done

echo "Done clearing domain"
