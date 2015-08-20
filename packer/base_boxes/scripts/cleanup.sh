#!/bin/bash

echo 'Cleanup bash history...'
unset HISTFILE
[ -f /root/.bash_history ] && rm -f /root/.bash_history
[ -f /home/vagrant/.bash_history ] && rm -f /home/vagrant/.bash_history

echo "Remove Linux headers..."
yum -y remove gcc kernel-devel kernel-headers
yum -y clean all

echo "Remove Virtualbox specific files..."
rm -rf /usr/src/vboxguest* /usr/src/virtualbox-ose-guest*
rm -rf *.iso *.iso.? /tmp/vbox /home/vagrant/.vbox_version

echo "Cleanup log files..."
find /var/log -type f -not -path '*tower/setup*log' | while read LOG; do echo -ne '' > "${LOG}"; done;

echo "Remove files in tmp..."
rm -rf /tmp/*

echo "Reset network configuration..."
rm -f /etc/udev/rules.d/70-persistent-net.rules

# this needs to be specific to virtualbox
#sed -i '/^UUID/d'   /etc/sysconfig/network-scripts/ifcfg-enp0s3
#sed -i '/^HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-enp0s3

#echo "Fill up the disk..."
#dd if=/dev/zero of=/EMPTY bs=1M
#rm -rf /EMPTY
