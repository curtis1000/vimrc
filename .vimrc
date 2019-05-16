set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Run :PluginInstall / :PluginUpdate to install/update packages from github
" then :so $MYVIMRC to apply

" Theme (gruvbox)
" Bundle 'morhetz/gruvbox'
" colorscheme gruvbox
" set background=dark

" Theme (focuspoint)
" Bundle 'chase/focuspoint-vim'
" colorscheme focuspoint
" set background=dark

" Theme (kuroi)
Bundle 'aonemd/kuroi.vim'
colorscheme kuroi
set background=dark
set termguicolors

" Theme (tender)
" Plugin 'jacoborus/tender'
" colorscheme tender
" let g:airline_theme = 'tender'
" let macvim_skip_colorscheme=1

" GitGutter
Bundle 'airblade/vim-gitgutter'

" Airline
Plugin 'vim-airline/vim-airline'

" airline (a derivative of powerline) requires powerline fonts:
" git@github.com:powerline/fonts.git
set guifont=Roboto\ Mono\ Light\ for\ Powerline:h16

" per https://github.com/vim-airline/vim-airline/wiki/FAQ
set laststatus=2

" filetype plugin indent on     " required!

" Default tabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set bs=2

" Filetype-specific tabs
autocmd BufRead,BufNewFile *.rb,*.scss setlocal shiftwidth=2 tabstop=2

syntax enable

" Put .swp files in a designated place
set directory=/tmp/vim

" leader key
let mapleader=","

" Display whitespace
set list listchars=tab:»·,trail:·

" Explorer Mode Display Tweaks (tree view)
let g:netrw_liststyle=3

" line numbers
set number

" turn off error beeps
set visualbell

" integrate yank with clipboard
set clipboard=unnamed

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

