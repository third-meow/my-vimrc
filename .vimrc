set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'dracula/vim'
Plugin 'nightsense/plumber'
Plugin 'rfunix/vim-greenisgood'
Plugin 'crusoexia/vim-monokai'
Plugin 'alvan/vim-closetag'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'elmcast/elm-vim'
Plugin 'bluz71/vim-moonfly-colors'
Plugin 'ervandew/supertab'


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function SetOldStyle()
	colorscheme dracula 
	highlight Normal ctermbg=None

	set tabstop=2
	set softtabstop=2
	set shiftwidth=2
endfunction

function SetNewStyle()
	colorscheme dracula
	highlight Normal ctermbg=None

	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
endfunction

function SetRustStyle()
	set termguicolors
	colorscheme moonfly 
	highlight Normal ctermbg=None

	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
endfunction

function SetWebStyle()
	call SetOldStyle()
	colorscheme monokai
	highlight Normal ctermbg=None
endfunction



" global sets
set number
set wildmenu
set foldmethod=indent
set foldlevel=99
set ttimeoutlen=5
set autoindent
set smartindent
set path+=**

" remaps
nnoremap <F3> :GoInfo <CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F6> <C-W>w
tnoremap <F6>  <C-\><C-n><C-W>w
nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>
nnoremap j gj
nnoremap k gk

" ctags
nnoremap <Leader>] <C-]>
nnoremap <Leader>[ <C-t>

" spelling related
noremap <Leader>so :set spell<CR>
noremap <Leader>sf :set spell!<CR>
noremap <Leader>= z=1

" search highlighting
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

"
" Snippit commands
nnoremap <Leader>cpp :-1read $HOME/src/.skeleton.cpp<CR>4ji<TAB>
nnoremap <Leader>html :-1read $HOME/src/.skeleton.html<CR>3jwf<i
nnoremap <Leader>c :-1read $HOME/src/.skeleton.c<CR>4jli



" airline extentions
let g:airline_extensions = ['branch', 'tabline']


au BufNewFile,BufRead *.py call SetNewStyle()
au BufNewFile,BufRead *.elm call SetNewStyle()

au BufNewFile,BufRead *.cpp call SetOldStyle()
au BufNewFile,BufRead *.ino call SetOldStyle()
au BufNewFile,BufRead *.c call SetOldStyle()
au BufNewFile,BufRead *.h call SetOldStyle()

au BufNewFile,BufRead *.rs call SetRustStyle()

au BufNewFile,BufRead *.html call SetWebStyle()
au BufNewFile,BufRead *.css call SetWebStyle()
au BufNewFile,BufRead *.js call SetWebStyle()
au BufNewFile,BufRead *.tera call SetWebStyle()
au BufNewFile,BufRead *.json call SetWebStyle() 
au BufNewFile,BufRead *.vue call SetWebStyle() | set filetype=html

"""""""""""""""""""""""""""""""""""""""""""""""
"Defualt Colour scheme"""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
"Comment out all but one"""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
colorscheme dracula
highlight Normal ctermbg=None
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
"set termguicolors
"colorscheme greenisgood
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
"set termguicolors
"colorscheme plumber-dark
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
