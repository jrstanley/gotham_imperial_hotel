#!/usr/bin/env bash

echo "Self update apt-get"
apt-get update

echo "Installing git"
apt-get install -y git

echo "Installing curl"
apt-get install -y curl

echo "Installing node and npm"
#Instructions as per https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager (Vagrant runs in root/sudo mode already)
apt-get install -y python-software-properties python g++ make
# Default ubuntu version seems to be 0.6, latest as of July 2013 is 0.10.13
# chris-lea is tracking latest node version, so we use that
# add-apt-repository ppa:chris-lea/node.js
apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
apt-add-repository 'deb https://deb.nodesource.com/node_4.x precise main'
apt-get update
apt-get install -y nodejs
# nodejs above includes npm --- apt-get install -y npm

echo "Install grunt dependencies"
npm install -g coffee-script
npm install -g grunt-cli
npm install -g gulp
npm install -g yarn