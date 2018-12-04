#!/bin/sh

#copy the conf directory
mv /etc/freeswitch /etc/freeswitch.orig
mkdir /etc/freeswitch
cp -R /var/www/nocroompbx/resources/templates/conf/* /etc/freeswitch
