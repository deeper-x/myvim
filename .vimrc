set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" code folding with bar
Plugin 'tmhedberg/SimpylFold'

let g:SimpylFold_docstring_preview=1

" indent
Plugin 'vim-scripts/indentpython.vim'

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" best autocomplete
Bundle 'Valloric/YouCompleteMe'

" default open tree
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntax enforcer
Plugin 'vim-syntastic/syntastic'

" lint please...
Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

" dark theme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

" project tree on the left, as usual
Plugin 'scrooloose/nerdtree'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F6> :NERDTreeToggle<CR>

" search everything with <CTRL-P>
Plugin 'kien/ctrlp.vim'

" line numbers
set nu

" footer stuff, useful informations
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamed

" MarkDown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" mypy support
Plugin 'integralist/vim-mypy'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


