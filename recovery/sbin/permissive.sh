#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
mkdir -p /dev/block/by-name/system 
busybox mount -o bind /dev/block/system/by-name/ /dev/block/platform/system/by-name/