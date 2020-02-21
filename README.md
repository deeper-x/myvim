# my Vim

```bash
$ sudo apt-get remove vim-tiny
$ sudo apt-get install vim
# verify python3 support 
$ vim --version # expected +python3
# Test
:python3 print(f"""hello, you're in ${os.getcwd()}""")
# Vundle is the plugin manager
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# get remote file config 
$ wget -O ${HOME}/.vimrc https://raw.githubusercontent.com/deeper-x/myvim/master/.vimrc
# Install plugins
$ vim ${HOME}/.vimrc
:PluginInstall
```

#### Installed plugins:
```bash
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'integralist/vim-mypy'
```

#### Result is:

![screenshot](https://raw.githubusercontent.com/deeper-x/myvim/master/myvim.png "Screenshot")



### Bugfix
#### error: mypy: error: unrecognized arguments: --fast-parser
```bash
$ vim $HOME/.vim/bundle/vim-mypy/autoload/mypy.vim
# line 14 must be
execute "!mypy --ignore-missing-imports --follow-imports=skip " . bufname("%")
```

