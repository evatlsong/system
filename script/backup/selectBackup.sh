#!/bin/bash
command=() 
command[0]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/ui-tech /Volumes/repository/backup/ui-tech exclude_file"
command[1]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/ui-tech pi:/media/pi/WD/ui-tech exclude_file"
command[2]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/SourceCode /Volumes/repository/backup/SourceCode exclude_file"
command[3]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/SourceCode pi:/media/pi/WD/SourceCode exclude_file"

command[4]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh pi:/media/pi/WD/evatlsong /Volumes/repository/backup/evatlsong exclude_file"
command[5]="~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh pi:/media/pi/WD/unchange /Volumes/repository/backup/unchange exclude_file"

command[6]="rsync -avr --delete /Users/evatlsong/.ssh/ pi:/media/pi/WD/evatlsong/private/ssh/ --exclude-from exclude_file"
command[7]="rsync -avr --delete /Users/evatlsong/.password-store/ pi:/media/pi/WD/evatlsong/private/password-store/ --exclude-from exclude_file"
command[8]="rsync -avr --delete /Users/evatlsong/system/ pi:/media/pi/WD/evatlsong/system/ --exclude-from exclude_file"
command[9]="rsync -avr --delete /Users/evatlsong/Note/ pi:/media/pi/WD/evatlsong/Note/ --exclude-from exclude_file"

command[10]="rsync -avr --delete /Users/evatlsong/vivo/ pi:/media/pi/WD/liuqiujin/vivo/ --exclude-from exclude_file"

echo "----------------------------------"
echo "please enter your choise (split with blank space):"
#echo ""
#echo "mac to pi and repository"
#echo "(0) ${command[0]}"
#echo "(1) ${command[1]}"
#echo "(2) ${command[2]}"
#echo "(3) ${command[3]}"
#echo ""
#echo "pi to repository"
#echo "(4) ${command[4]}"
#echo "(5) ${command[5]}"
#echo ""
#echo "mac to pi"
#echo "(6) ${command[6]}"
#echo "(7) ${command[7]}"
#echo "(8) ${command[8]}"
#echo "(9) ${command[9]}"
#echo ""
#echo "(10) ${command[10]}"
#echo "(11) Exit Menu"
echo "----------------------------------"

IFSBAK=$IFS # 保存默认的IFS
IFS=$'\n'   #指定分隔符
select c in ${command[*]}
do
     eval "$c &"
done
IFS=$IFSBAK  # 还原默认分隔符
wait

echo "----------------------------------"
echo "task finish"
