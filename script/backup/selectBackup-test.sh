#!/bin/bash
command=() 
command[0]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/Temp/demo /Users/evatlsong/Temp/demo1 exclude_file"
command[1]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/Temp/demo /Users/evatlsong/Temp/demo2 exclude_file"

echo "----------------------------------"
echo "please enter your choise (split with blank space):"
echo ""
echo "(0) ${command[0]}"
echo "(1) ${command[1]}"
echo ""
echo "(9) Exit Menu"
echo "----------------------------------"
read -p "Your select : " input   #输入格式空格分隔 如需别的格式后面for语句$input用awk处理
for i in $input
do
    eval "${command[i]} &"
done
wait
echo "task finish"
