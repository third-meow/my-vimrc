set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'dracula/vim'
Plugin 'nightsense/plumber'
Plugin 'rfunix/vim-greenisgood'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'elmcast/elm-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set foldmethod=indent
set foldlevel=99
set ttimeoutlen=10
set smartindent
nnoremap <F2> :vs ~/src/.skel_cpp <Bar> :%y <Bar> :wq <Bar> :put! <CR>
nnoremap <F3> :GoInfo <CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F6> <C-W>w 
:nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

let g:airline_extensions = ['branch', 'tabline']

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2  autoindent
au BufNewFile,BufRead *.elm set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.ino set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.html set filetype=html tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.css set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.tera set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.cs set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
au BufNewFile,BufRead *.txt set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 list

colorscheme dracula
highlight Normal ctermbg=None

"set termguicolors
"colorscheme greenisgood
