#! /bin/sh
echo 'enter openwrt start nfs'
ping -c 3 -W 5 openwrt
if [[ $? != 0 ]]; then
    echo " can not connect "
    exit 0
fi
ssh openwrt\
    'mount -t ext4 /dev/sda1 /mnt/share/ \
    && /etc/init.d/portmap start \
    && /etc/init.d/nfsd start \
    && /etc/init.d/portmap enable \
    && /etc/init.d/nfsd enable \
    && exit'
echo 'exit openwrt mount nfs'
mount -t nfs -o nolock 192.168.1.1:/mnt/share /Users/evatlsong/Shares/
