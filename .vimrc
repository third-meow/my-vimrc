set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'dracula/vim'
Plugin 'nightsense/plumber'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set foldmethod=indent
set foldlevel=99
map <F6> <C-W>w 


au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2
au BufWritePost *.go !gofmt -w % 
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.cs set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.txt set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80

set termguicolors
colorscheme plumber-dark
