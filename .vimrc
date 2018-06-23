" 
" Common options
"
set number
set ruler
set showcmd
set incsearch
set smartindent
set hlsearch
set shiftwidth=4
set tabstop=4
set softtabstop=4
set mouse=a

vmap <C-C> "+y
nmap <C-A> ggVG

filetype plugin indent on


autocmd FileType cpp,haskell map <F8>   : ! time ./%< < %<.in <CR>
autocmd FileType cpp,haskell map <F5>   : ! ./%< <CR>
autocmd FileType cpp,haskell map <F3>   : vnew %<.in <CR>

"
"	c++ sources(*.cpp)
"
autocmd FileType cpp set cindent
autocmd FileType cpp map <F10>  : ! gdb --silen %< <CR>
autocmd FileType cpp map <F9>   : ! g++ -g --std=c++11 -Wall -Wextra -Wconversion % -o %< && size %< <CR>
autocmd FileType cpp map <C-F9> : ! g++ -g --std=c++11 -O2 -Wall -Wextra -Wconversion % -o %< && size %< <CR>

"
"	html sources(*.html)
"
autocmd FileType html map <F8>  : ! firefox % & <CR><CR>

"
"	vimrc
"
autocmd FileType vimrc map <F12> : source ~/.vimrc <CR>

"	
"	tex files(*.tex)
"
autocmd FileType tex set smartindent
autocmd FileType tex set tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType tex set textwidth=80
autocmd FileType tex map <F9>   : ! xelatex --shell-escape % <CR>
autocmd FileType tex map <F8>   : ! evince %<.pdf & <CR> 

"
"	haskell files(*.hs)
"
autocmd FileType haskell map <F9> : ! ghc % -o %< <CR>
autocmd FileType haskell map <F5> : ! ./%< <CR>

"
"	python
"
autocmd FileType python map <F9> : ! python3 % <CR>
autocmd FileType python map <F8> : ! python3 % <CR>
