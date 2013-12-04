set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set nocompatible  "关闭与VI的兼容
filetype off
set nu!   "打开行号
set nowrap       "自动折行


"开启语法高亮设置
if !exists("syntax_on")
syntax on
endif
set filetype=c      "设置默认语言为C
set tabstop=4       "设置tab距离为4
set softtabstop=4
set shiftwidth=4    "换行时行间交错使用4个空格
set expandtab
set cindent         "使用C语言的对齐方式
set smartindent     "智能对齐方式
set autoindent      "自动对齐,使用上一行的对齐方式
set ai!             "设置自动缩进
set nocp            "使可以使用backspace
set backspace=indent,eol,start  "使以前的字符也能使用backspace
set ruler           "在编辑过程中，在右下角显示光标位置的状态行
set incsearch       "搜索自动定位
set hlsearch        "高亮搜索
set autochdir       "自动切换工作目录
"自动载入 _vimrc，修改后不需要重启
autocmd! bufwritepost _vimrc source %
filetype plugin indent on     " required!
