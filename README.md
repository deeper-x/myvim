# my Vim

```bash
$ sudo apt-get remove vim-tiny
$ sudo apt-get install vim
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ touch ~/.vimrc

```

![screenshot](https://raw.githubusercontent.com/deeper-x/myvim/master/myvim.png "Screenshot")

#### .vimrc:

Paste content, then :PluginInstall

```bash
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" Indent code
Plugin 'vim-scripts/indentpython.vim'

" Suspended
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" Autocompletion
Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Syntactic chec
Plugin 'vim-syntastic/syntastic'

" Lint
Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

" Theme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

Plugin 'scrooloose/nerdtree'

" Plugin 'jistr/vim-nerdtree-tabs'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Search with <CTRL-P>
Plugin 'kien/ctrlp.vim'

" Line numbers
set nu

" Editor utils on footer
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamed

" Markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

```
