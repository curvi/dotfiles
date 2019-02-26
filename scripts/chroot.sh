#!/bin/bash

drive=sdb
folder=/mnt/sysimage
mkdir $folder

# drive 7 is the / partition
# drive 5 is the /boot partition
# drive 2 is the /efi partition

mount /dev/$(drive)7 $folder
mount /dev/$(sdb)5 $folder/boot
mount /dev/$(sdb)2 $folder/boot/efi

mount --bind /dev $folder/dev
mount --bind /proc $folder/proc
mount --bind /sys $folder/sys

chroot $folder

# Install grub bootloader
# dnf install grub2-efi-x64 shim-x64

# update grub menu entries
# __________
# if live-usb is found (long waiting time) use
# chmod a-x /etc/grub.d/30_os-prober
# config (see below)
# chmod a+x /etc/grub.d/30_os-prober
# inhibits exectution of os-prober (no other os is found => reconfig
# without usb stick afterwards!)

# grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
