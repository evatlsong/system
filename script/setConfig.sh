#! /bin/sh
if [-e ~/.bashrc]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
if [-e ~/.vimrc]
then
    mv ~/.vimrc ~/.vimrc.bak
fi
if [-e ~/.gvimrc]
then
    mv ~/.gvimrc ~/.gvimrc.bak
fi

ln -sv ~/system/config/.bashrc ~/.bashrc
ln -sv ~/system/config/.vimrc ~/.vimrc
ln -sv ~/system/config/.vimrc ~/.gvimrc
