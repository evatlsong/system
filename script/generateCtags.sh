#!/bin/bash

#
# File: ctags.sh
# Author: evatlsong
# Date: 2011-11-30
# Desc: ctags 生成系统库以及ACE, SQLITE, ORACLE相关函数的tags, 存放于 ~/.vim/systags 文件中
# useage: 首先下载ctags sudo apt-get install exuberant-ctags
#

#mkdir -p ~/.vim;
ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q  -f ~/.vim/systags /usr/include/* /usr/include/netinet/* /usr/include/arpa/* /usr/include/x86_64-linux-gnu/sys/*
