set nocompatible              " be iMproved
filetype off                  " required!

set shell=/bin/bash
let mapleader=","

filetype plugin indent on

source ~/.vim/config/vundle.vim
source ~/.vim/config/theme.vim
source ~/.vim/config/nerd.vim

" my plugins
source ~/.vim/myplugins/run_django_test.vim

" language configs
source ~/.vim/config/python_lang.vim
source ~/.vim/config/latex_lang.vim

" tabs as 4 spaces and other tab stuff
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"map the comment toggling
nmap <D-/> <leader>c<Space>
vmap <D-/> <leader>c<Space>

"unite command
nmap <leader>f :UniteWithCurrentDir -start-insert buffer file<cr>


