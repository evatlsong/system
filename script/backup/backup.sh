#! /bin/sh
echo "start"
#~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/ui-tech /Volumes/repository/backup/ui-tech exclude_file &
#~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/SourceCode /Volumes/repository/backup/SourceCode exclude_file 
~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/ui-tech pi:/media/pi/WD/ui-tech exclude_file &
~/SourceCode/OpenSource/rsync-time-backup/rsync_tmbackup.sh /Users/evatlsong/SourceCode pi:/media/pi/WD/SourceCode exclude_file 
echo "end"
