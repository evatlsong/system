#! /bin/sh
echo 'enter openwrt start nfs'
ssh openwrt /etc/init.d/portmap start && /etc/init.d/unfs3 start && mount -t ext4 /dev/sda1 /mnt/shares/ && exit
echo 'exit openwrt mount nfs'
mount -t nfs -o rw 192.168.1.1:/mnt/shares /Users/evatlsong/Shares/
