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
Plugin 'vim-airline/vim-airline'

" airline (a derivative of powerline) requires powerline fonts:
" git@github.com:powerline/fonts.git
set guifont=Roboto\ Mono\ Light\ for\ Powerline:h18

" per https://github.com/vim-airline/vim-airline/wiki/FAQ
set laststatus=2

filetype plugin indent on     " required!

" Theme
colorscheme gruvbox
set background=dark

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

syntax enable

" Put .swp files in a designated place
set directory=~/tmp

" Display whitespace
set list listchars=tab:»·,trail:·

" Explorer Mode Display Tweaks (tree view)
let g:netrw_liststyle=3

" line numbers
set number

" turn off error beeps
set visualbell

" airline config
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
