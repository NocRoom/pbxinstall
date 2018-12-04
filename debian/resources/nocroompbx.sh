#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing NocRoomPBX"

#install dependencies
apt-get install -y --force-yes vim git dbus haveged ssl-cert qrencode
apt-get install -y --force-yes ghostscript libtiff5-dev libtiff-tools at

#get the branch
if [ .$system_branch = .'master' ]; then
	verbose "Using master"
	branch=""
else
	system_major=$(git ls-remote --heads https://github.com/NocRoom/NocRoomPBX.git | cut -d/ -f 3 | grep -P '^\d+\.\d+' | sort | tail -n 1 | cut -d. -f1)
	system_minor=$(git ls-remote --tags https://github.com/NocRoom/NocRoomPBX.git $system_major.* | cut -d/ -f3 |  grep -P '^\d+\.\d+' | sort | tail -n 1 | cut -d. -f2)
	system_version=$system_major.$system_minor
	verbose "Using version $system_version"
	branch="-b $system_version"
fi

#get the source code
git clone $branch https://github.com/NocRoom/NocRoomPBX.git /var/www/nocroompbx
chown -R www-data:www-data /var/www/nocroompbx
chmod -R 755 /var/www/nocroompbx/secure
