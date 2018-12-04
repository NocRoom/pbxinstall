#!/bin/sh

export PGPASSWORD="zzz"
db_host=127.0.0.1
db_port=5432

now=$(date +%Y-%m-%d)
mkdir -p /var/backups/nocroompbx/postgresql

echo "Backup Started"

#delete postgres backups
find /var/backups/nocroompbx/postgresql/nocroompbx_pgsql* -mtime +4 -exec rm {} \;

#delete the main backup
find /var/backups/nocroompbx/*.tgz -mtime +2 -exec rm {} \;

#backup the database
pg_dump --verbose -Fc --host=$db_host --port=$db_port -U nocroompbx nocroompbx --schema=public -f /var/backups/nocroompbx/postgresql/nocroompbx_pgsql_$now.sql

#package
tar -zvcf /var/backups/nocroompbx/backup_$now.tgz /var/backups/nocroompbx/postgresql/nocroompbx_pgsql_$now.sql /var/www/nocroompbx /usr/share/freeswitch/scripts /var/lib/freeswitch/storage /var/lib/freeswitch/recordings /etc/nocroompbx /etc/freeswitch

#source
#tar -zvcf /var/backups/nocroompbx/backup_$now.tgz /var/backups/nocroompbx/postgresql/nocroompbx_pgsql_$now.sql /var/www/nocroompbx /usr/local/freeswitch/scripts /usr/local/freeswitch/storage /usr/local/freeswitch/recordings /etc/nocroompbx /usr/local/freeswitch/conf

echo "Backup Completed"
