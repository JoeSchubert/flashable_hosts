#!/bin/bash
# This is a simple script that will download a hosts file and build a zip
# By default, this will use the pre-built hosts from https://github.com/StevenBlack/hosts
# If you do not want to use that file change the url to point to the one you want.
#
HOSTS_URL=https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts

wget -O hosts_zip/system/etc/hosts $HOSTS_URL

cd hosts_zip
zip -9 -r ../flashable_hosts.zip .
cd ..
