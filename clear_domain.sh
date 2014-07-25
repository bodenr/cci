#!/bin/bash

# Finds and removes all instances of the current domain name
# under /etc/*

DOMAIN=`hostname | awk -F. '{$1="";OFS="." ; print $0}' | sed 's/^.//'`

echo "Clearing domain: $DOMAIN"

for f in $(find /etc -type f -print0 | xargs -0 grep -I -l "$DOMAIN")
do
    echo "Clearing $DOMAIN from $f"
    sed -i 's/.'"$DOMAIN"'//g' $f
done

echo "Done clearing domain"
