#!/bin/sh
mount /dev/disk/by-label/MULTIBOOT /mnt
cp /root/projects/LocalSuperNode/*.iso /mnt/boot/iso/
sync
umount /mnt
