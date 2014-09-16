#! /bin/sh
rsync -azvr --delete /home/evatlsong/Music /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Pictures /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Documents /media/evatlsong/WD/evatlsong/
rsync -azvr /home/evatlsong/Videos /media/evatlsong/WD/evatlsong/

rsync -azvr --delete /home/evatlsong/File /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Book /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Project /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/OpenSource /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/software /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Dropbox /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/Archive /media/evatlsong/WD/evatlsong/

rsync -azvr --delete /home/evatlsong/workspace /media/evatlsong/WD/evatlsong/
rsync -azvr --delete /home/evatlsong/system /media/evatlsong/WD/evatlsong/

rsync -azvr /home/evatlsong/Windows /media/evatlsong/WD/
rsync -azvr --delete /opt /media/evatlsong/WD/
