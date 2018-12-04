#!/bin/sh

#install git
yum -y install git

#get the install script
cd /usr/src && git clone https://github.com/NocRoom/NocRoomPBX.git

#change the working directory
cd /usr/src/nocroompbx-install.sh/centos
