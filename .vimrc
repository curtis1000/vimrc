set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Run :PluginInstall / :PluginUpdate to install/update packages from github

" My Bundles here:
Bundle 'morhetz/gruvbox'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on     " required!

" Theme
colorscheme gruvbox
set background=dark

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

syntax enable

" Display whitespace
set list listchars=tab:»·,trail:·

" Font
set guifont=Monaco:h18

" Explorer Mode Display Tweaks (tree view)
let g:netrw_liststyle=3

" line numbers
set number

" ruler
set ruler

" turn off error beeps
set visualbell
