
NocRoomPBX Install
--------------------------------------
A quick install guide & scripts for installing NocRoomPBX. It is recommended to start with a minimal install of the operating system. Notes on further tweaking your configuration are at end of the file.

## Operating Systems
### Debian
Debian 9 is the preferred operating system by the FreeSWITCH developers. It supports the latest video dependencies and should be used if you want to do video mixing. Download Debian 9 Stretch at https://cdimage.debian.org/cdimage/release/current/

```sh
coming soon
```

### CentOS
CentOS operating system is a requirement for some companies. Don't expect video mixing to work. It will likely be a year or more for video mixing dependencies to be updated enough to work in CentOS.

```sh
wget -O - https://raw.githubusercontent.com/nocroom/pbxinstall/master/centos/pre-install.sh | sh
```
