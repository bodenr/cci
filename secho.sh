#!/bin/bash

echo $@ > ~/args.log
set > ~/set.log

apt-get install -y curl

curl http://208.43.17.69/secho.sh > ~/download.log


