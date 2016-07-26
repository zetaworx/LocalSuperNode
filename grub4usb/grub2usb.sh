#!/bin/sh

LABEL=MULTIBOOT
DRIVE=sdb
MOUNTPOINT=usbstick

#fdisk /dev/$DRIVE
mkfs.vfat -F 32 -n $LABEL /dev/sdb1

mkdir /mnt/usbstick
mount /dev/sdb1 /mnt/$MOUNTPOINT
mkdir /mnt/$MOUNTPOINT/boot
mkdir /mnt/$MOUNTPOINT/boot/iso

grub-install --no-floppy --boot-directory=/mnt/$MOUNTPOINT/boot /dev/$DRIVE

cat <<EOF > /mnt/$MOUNTPOINT/boot/grub/grub.cfg
set imgdevpath="/dev/disk/by-label/$LABEL"

menuentry '[loopback]Local Supernode' {
	set isofile='/boot/iso/live-image-amd64.iso'
	loopback loop \$isofile
	linux (loop)/live/vmlinuz console=ttyS0,115200 console=tty0 noeject toram live-media=removable boot=live locales=en_US.UTF-8 keyboard-layouts=de fromiso=/dev/disk/by-label/$LABEL\$isofile
	initrd (loop)/live/initrd.img
}
EOF


#umount /mnt/$MOUNTPOINT
#rm -r /mnt/$MOUNTPOINT

