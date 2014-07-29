#!/bin/bash

# Install docker with AUFS support on ubuntu 14

apt-get update
apt-get install -y linux-image-extra-$(uname -r)
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb https://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
apt-get update
apt-get install -y aufs-tools lxc-docker

echo 'DOCKER_OPTS="-s aufs"' >> /etc/default/docker

initctl restart docker
