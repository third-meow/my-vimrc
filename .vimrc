set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'dracula/vim'
Plugin 'nightsense/plumber'
Plugin 'fxn/vim-monochrome'
Plugin 'rfunix/vim-greenisgood'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set foldmethod=indent
set foldlevel=99
set ttimeoutlen=10
set smartindent

map <F6> <C-W>w 
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
:nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

let g:airline_extensions = ['branch', 'tabline']

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ino set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.tera set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.cs set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.txt set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 list

colorscheme dracula
highlight Normal ctermbg=None

"set termguicolors
"colorscheme greenisgood
