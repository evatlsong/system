#!/bin/bash
command=() 
command[0]="mount -t nfs -o nolock raspberrypi:/media/pi/WD ~/Shares"
command[1]="diskutil unmount ~/Shares"
command[2]="~/Applications/syncthing/syncthing"

command[3]="ssh pi 'sudo shutdown -h now'"
command[4]="ssh pi '/home/pi/syncthing-linux-arm-v0.14.54/syncthing'"

# pi
## shutdonw
## start syncthing
echo "----------------------------------"
echo "please enter your choise (split with blank space):"
echo ""
echo "mac"
echo "(0) ${command[0]}"
echo "(1) ${command[1]}"
echo "(2) ${command[2]}"
echo "(3) ${command[3]}"
echo "(4) ${command[4]}"
echo ""
echo "pi"
echo "(9) Exit Menu"
echo "----------------------------------"
read -p "Your select : " input   #输入格式空格分隔 如需别的格式后面for语句$input用awk处理
for i in $input
do
    eval "${command[i]} &"
done
wait
echo "----------------------------------"
echo "task finish"
