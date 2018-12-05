#!/bin/sh

#install git
yum -y install git

#get the install script
cd /usr/src && git clone https://github.com/NocRoom/pbxinstall.git

#change the working directory
cd /usr/src/pbxinstall/centos
chmod 777 /usr/src/pbxinstall/centos/install.sh
./install.sh
