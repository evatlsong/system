#! /bin/sh
if [-e ~/.vimrc]
then
    mv ~/.vimrc ~/.vimrc.bak
fi

ln -sv ~/system/config/.vimrc ~/.vimrc
