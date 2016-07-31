#!/bin/sh

###########################################################
# Generate a persistence file to store change made in /etc
#
#
#


# STEPS
# search for mount persitence file
## ask for reset of file
# search for multiboot label on disks

# Variables
LABEL=MULTIBOOT
PSIZE=32M
FILE=/tmp/persistence
DISK=/dev/disk/by-label/$LABEL
MNTUSB=/mnt/usb
MNTPRST=/mnt/persistence



mkdir $MNTUSB
mkdir $MNTPRST

# create persistence file
dd if=/dev/null of=$FILE bs=1 count=0 seek=$PSIZE
# format persistence file
/sbin/mkfs.ext4 -F $FILE

# mount persistence file
mount -t ext4 /tmp/persistence $MNTPRST
echo "/etc union" > $MNTPRST/persistence.conf
sync
umount $MNTPRST

mount -t vfat $DISK $MNTUSB
mv $FILE $MNTUSB/
sync
umount $MNTUSB

