#!/bin/bash

apt -y update 
apt -y reinstall git 
mkdir -p /usr/local/share/data/GitHub/econ-ark 
[[ ! -e /usr/local/share/data/GitHub/econ-ark/econ-ark-tools ]] && git clone --depth 1 --branch Make-Installer-ISO-WORKS https://github.com/econ-ark/econ-ark-tools /usr/local/share/data/GitHub/econ-ark/econ-ark-tools 
chmod -R a+rwx /usr/local/share/data/GitHub/econ-ark/econ-ark-tools/* /usr/local/share/data/GitHub/econ-ark/econ-ark-tools/.*[0-z]* 
[[ -d /var/local ]] && rm -Rf /var/local 
if [[ ! -L /var/local ]]
then rm -Rf /var/local 
ln -s /usr/local/share/data/GitHub/econ-ark/econ-ark-tools/Virtual/Machine/ISO-maker/Files/For-Target /var/local 
fi 
rm -f /var/local/Size-To-Make-Is-* 
touch /var/local/Size-To-Make-Is-$(echo MIN) 
echo $(echo MIN > /usr/local/share/data/GitHub/econ-ark/econ-ark-tools/Virtual/Machine/ISO-maker/Files/For-Target/About_This_Install/machine-size.txt) 
/bin/bash /var/local/late_command_finish.sh > /var/local/late_command_finish.log 
apt -y purge gnome-shell gnome-settings-daemon at-spi2-core libgdm1 gdm3 gnome-session-bin 
/var/local/start.sh
