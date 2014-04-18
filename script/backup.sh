#! /bin/sh
rsync -azvr --delete /home/evatlsong/Music /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Pictures /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Documents /media/WD/evatlsong/
rsync -azvr /home/evatlsong/Videos /media/WD/evatlsong/

rsync -azvr --delete /home/evatlsong/File /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Book /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Project /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/OpenSource /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/software /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Dropbox /media/WD/evatlsong/

rsync -azvr --delete /home/evatlsong/workspace /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/system /media/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/basepath /media/WD/evatlsong/

rsync -azvr /home/evatlsong/Windows /media/WD/
rsync -azvr --delete /opt /media/WD/
