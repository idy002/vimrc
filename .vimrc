set number
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set ruler
set showcmd
set hlsearch
set incsearch
set mouse=a

syntax on

nmap <C-A> ggVG
vmap <C-C> "+y

filetype plugin indent on

autocmd FileType cpp set cindent
autocmd FileType cpp map <F10> : ! gdb %< --silent <CR>
autocmd FileType cpp map <F9> : w <CR> : ! g++ % -o %< -g -Wall -Wextra -Wconversion && size %< <CR>
autocmd FileType cpp map <C-F9> : w <CR> : ! g++ % -o %< -O2 && size %< <CR>
autocmd FileType cpp map <F8> : ! time ./%< < %<.in <CR>
autocmd FileType cpp map <F5> : ! time ./%< <CR>

map <F4> : ! gedit % <CR>
map <F3> : vnew %<.in <CR>

imap jj <ESC>

