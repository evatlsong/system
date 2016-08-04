set nocompatible 

colorscheme desert
set guioptions-=m
set guioptions-=T

language messages en_US.UTF-8 "set message encode
set encoding=utf-8
set langmenu=en_US.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn

if !exists("syntax_on")
syntax on
endif

set nu!   "open number line
set nowrap       
set filetype=c      
set tabstop=4       
set softtabstop=4
set shiftwidth=4    
set expandtab
set cindent         
set smartindent     
set autoindent      
set ai!             
set nocp            
set backspace=indent,eol,start 
set ruler           
set incsearch     
set hlsearch   
set autochdir 
set relativenumber

autocmd! bufwritepost _vimrc source %

"                    vundle
"
" git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"Plugin 'https://github.com/vim-scripts/taglist.vim.git'
"Plugin 'https://github.com/vim-scripts/cscope.vim.git'
"Plugin 'https://github.com/vim-scripts/OmniCppComplete.git'
"Plugin 'https://github.com/Rip-Rip/clang_complete.git'
"Plugin 'https://github.com/vim-scripts/JavaScript-Indent.git'
"Plugin 'https://github.com/vim-latex/vim-latex.git'
"Plugin 'https://github.com/Shougo/neocomplete.vim.git'
Plugin 'plasticboy/vim-markdown'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'jlanzarotta/bufexplorer'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""" end vundle

" needs install plugin use vundle

" taglist
" set tags+=~/.vim/systags
"set tags+=/usr/include/qt4/tags
"set tags=tags;
"set cscopequickfix=s-,c-,d-,i-,t-,e- 

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" vim-markdown config start
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1
" vim-markdown config end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""preview in brower
" 在浏览器预览 for Linux
function! ViewInBrowser(name)
    let file = expand("%:p")
    echo file
    exe "!google-chrome" file
endfunction

let mapleader=','
nmap <Leader>gg :call ViewInBrowser("gg")<cr>

nmap <Leader>ne :NERDTreeToggle<cr>

set foldmethod=indent
