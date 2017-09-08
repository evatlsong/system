# !/bin/sh
docker run --name=ss -p 8388:8388 -d tommylau/shadowsocks -s 0.0.0.0 -p 8388 -k 19840718 -m rc4-md5
