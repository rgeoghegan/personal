set vb
set showmode
set showcmd
set ts=4
set sw=4
set wrap
set hlsearch
syntax on
set smarttab
set expandtab
set softtabstop=4
set number
set linebreak
autocmd BufNew * set wrap
set incsearch

set nocompatible
set makeprg=rake

filetype on
"filetype plugin indent on

" Unix specific settings
set shell=bash

" Settings to make you learn hjkl
"map <left> <nop>
"map <right> <nop>
"map <up> <nop>
"map <down> <nop>

"autocmd FileType python set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

" Get rid of stupid middle button paster
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set wildmenu
set wildmode=list:longest
set title
set ignorecase
set smartcase

map <RIGHT> :cal NextTabWithCheck()<CR>
map <LEFT> :cal PrevTabWithCheck()<CR>
imap <RIGHT> <ESC>:cal NextTabWithCheck()<CR>
imap <LEFT> <ESC>:cal PrevTabWithCheck()<CR>

" Add newline after cursor
map <C-o> mo$i<CR><ESC>`o
map * *N

set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

" Stuff for slime plugin
let g:screen_sessionname = "slime"
let g:screen_windowname = "0"

let python_highlight_space_errors = 1

iab bunny+ (\ /)<CR>(O.o)<CR>(> <) Bunny approves these changes
iab fbz BugzId

" Classic error
ab Tabe tabe

map <F2> "+p

map <C-J> :s/\(.\{,75}\) /\1\r/<Enter>:nohl<Enter>
set colorcolumn=80
set foldmethod=indent
set foldlevel=1000
