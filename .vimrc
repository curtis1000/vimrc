call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" call :PlugInstall to install plugins

" Theme
Plug 'aonemd/kuroi.vim'
Plug 'lifepillar/vim-solarized8'

" GitGutter
Plug 'airblade/vim-gitgutter'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " makes airline inherit theme colors

" Elixir Support
" Plug 'elixir-editors/vim-elixir'

" Initialize plugin system
call plug#end()

" General Editor Tweaks
set nocompatible               " be iMproved
syntax enable

" Put .swp files in a designated place
set directory=/tmp

" Theme setup
" There's a couple options here, kuroi/dark or solarized8 light/dark
" look nice depending on what you're feeling
colorscheme kuroi
" colorscheme solarized8
" set background=light
set background=dark

set termguicolors

" Display whitespace
set list listchars=tab:»·,trail:·

" line numbers
set number

" turn off error beeps
set visualbell

" integrate yank with clipboard
set clipboard=unnamed

" Default tabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Filetype-specific tabs
autocmd BufRead,BufNewFile *.rb,*.scss setlocal shiftwidth=2 tabstop=2

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

" custom functions!

" :call CheatSheet()
function! CheatSheet()
  call system("open https://vim.rtorr.com")
endfunction

" map F1 key to CheatSheet() in normal mode
:nnoremap <F1> :call CheatSheet() <CR>

" :call RemoteUrl()
function! RemoteUrl()
  let line = line('.')
  exec 'call system("~/.vim/scripts/remote-url.sh " .  @% . " " . line . " | pbcopy")'
  echo "Copied URL to clipboard!"
endfunction

" map F2 key to the RemoteUrl function in normal mode
:nnoremap <F2> :call RemoteUrl() <CR>
