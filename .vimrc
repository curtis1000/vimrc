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

" Theme (tender)
Plugin 'jacoborus/tender'
colorscheme tender
let g:airline_theme = 'tender'

" GitGutter
Bundle 'airblade/vim-gitgutter'

" Airline
Plugin 'vim-airline/vim-airline'

" airline (a derivative of powerline) requires powerline fonts:
" git@github.com:powerline/fonts.git
set guifont=Roboto\ Mono\ Light\ for\ Powerline:h16

" per https://github.com/vim-airline/vim-airline/wiki/FAQ
set laststatus=2

filetype plugin indent on     " required!

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

syntax enable

" Put .swp files in a designated place
set directory=~/tmp

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

" http://felixge.de/2013/08/08/vim-trick-open-current-line-on-github.html
" (requires a custom alias for `git url` in ~/.gitconfig)
nnoremap <leader>o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

" alias for personal projects
nnoremap <leader>b :!sh bin/build<CR><CR>
