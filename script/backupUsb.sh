#! /bin/sh
rsync -avr --delete /home/evatlsong/Music /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Pictures /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Documents /media/evatlsong/WD/evatlsong/
rsync -avr /home/evatlsong/Videos /media/evatlsong/WD/evatlsong/

rsync -avr --delete /home/evatlsong/File /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Book /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Project /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/SourceCode /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Software /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Dropbox /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/Other /media/evatlsong/WD/evatlsong/

rsync -avr --delete /home/evatlsong/system /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/.jenkins /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/.m2 /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/.ssh /media/evatlsong/WD/evatlsong/
rsync -avr --delete /home/evatlsong/.npm /media/evatlsong/WD/evatlsong/

rsync -avr --delete /opt /media/evatlsong/WD/
