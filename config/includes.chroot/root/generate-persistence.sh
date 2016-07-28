#!/bin/sh

FILE=/tmp/persistence
DISK=/dev/disk/by-label/MULTIBOOT
MNTUSB=/mnt/usb
MNTPRST=/mnt/persistence

mkdir $MNTUSB
mkdir $MNTPRST

# create persistence file
dd if=/dev/null of=$FILE bs=1 count=0 seek=32M
# format persistence file
/sbin/mkfs.ext4 -F $FILE

# mount persistence file
mount -t ext4 /tmp/persistence $MNTPRST
echo "/etc union" > $MNTPRST/persistence.conf
sync
umount $MNTPRST

mount -t vfat $DISK $MNTUSB
cp $FILE $MNTUSB/
sync
umount $MNTUSB

