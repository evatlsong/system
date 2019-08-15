#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

PS3="select one option: "
URL="10.116.32.110:2121"
USERNAME="songtielei"
PASSWORD="1984"

ANDROID_SOURCE=(
DCIM
Download
tencent/MicroMsg/WeChat
)

OPER=(
get
put
)
function lftp::command() {
lftp -u $USERNAME,$PASSWORD $URL << EOF

command $1 $2 $3

EOF
}

select o in ${OPER[@]} 
do
    if [ "$o" == get ]; then
        for s in $ANDROID_SOURCE
        do
        lftp::command mirror /$s ~/Android/
        done
    elif [ "$o" == put ]; then
        lftp::command pwd
    else
        break;
    fi
done
echo "exec done"

#mget ftp://songtielei:19840718@10.116.32.110:2121/数据结构与算法分析+java语言描述（原书第3版）.pdf
#mget 数据结构与算法分析+java语言描述（原书第3版）.pdf -O ~/Temp/
