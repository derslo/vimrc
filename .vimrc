syntax enable
set background=dark
colorscheme solarized

set nocompatible
set number
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'StanAngeloff/php.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Buffergator'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'


" Now we can turn our filetype functionality back on
filetype plugin indent on
