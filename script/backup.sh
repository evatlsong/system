#! /bin/sh
rsync -avr --delete /home/evatlsong/Music openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/Pictures openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/Documents openwrt:/mnt/shares/evatlsong/
rsync -avr /home/evatlsong/Videos openwrt:/mnt/shares/evatlsong/

rsync -avr --delete /home/evatlsong/File openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/Book openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/Project openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/SourceCode openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/software openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/Dropbox openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/Other openwrt:/mnt/shares/evatlsong/

rsync -avr --delete /home/evatlsong/workspace openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/system openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/.jenkins openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/.m2 openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/.ssh openwrt:/mnt/shares/evatlsong/
rsync -avr --delete /home/evatlsong/.npm openwrt:/mnt/shares/evatlsong/

rsync -avr /home/evatlsong/Windows openwrt:/mnt/shares/
rsync -avr --delete /opt openwrt:/mnt/shares/
