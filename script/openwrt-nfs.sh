#! /bin/sh
ssh openwrt opkg update \
            && opkg install nfs-kernel-server
