#! /bin/sh
echo 'enter openwrt start nfs'
ssh openwrt 'opkg update && opkg install kmod-usb-storage kmod-fs-ext4 && mkdir -p /mnt/share && mount -t ext4 /dev/sda1 /mnt/share'
echo 'exit openwrt mount nfs'
