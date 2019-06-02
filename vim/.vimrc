
" Solarized vim colors https://bbs.archlinux.org/viewtopic.php?id=164108"
set nocompatible
set t_Co=16
set encoding=UTF-8
set guifont=SauceCodePro\ Nerd\ Font\ Mono\ 10
call pathogen#infect()
syntax on

set ts=2
set sts=2
set et "expand tabs to spaces

set background=dark " dark | light "
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

filetype plugin on

set number
set cursorline
set colorcolumn=80

call togglebg#map("<F5>")

:imap jj <ESC>
:set mouse=a
"set ttymouse=xterm2"

map <C-n> :NERDTreeToggle<CR>

