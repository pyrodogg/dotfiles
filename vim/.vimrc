
" Solarized vim colors https://bbs.archlinux.org/viewtopic.php?id=164108"
set nocompatible
set t_Co=16
call pathogen#infect()
syntax on
set background=dark " dark | light "
colorscheme solarized

filetype plugin on

set number
set cursorline
set colorcolumn=80

call togglebg#map("<F5>")

:imap jj <ESC>
:set mouse=a
"set ttymouse=xterm2"
