#!/bin/bash

echo "Installing Guest Additions..."
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm -f /home/vagrant/VBoxGuestAdditions.iso
