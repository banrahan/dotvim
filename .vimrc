set nocompatible              " be iMproved
filetype off                  " required!

set shell=/bin/bash
let mapleader=" "

filetype plugin indent on

source ~/.vim/config/vundle.vim
source ~/.vim/config/theme.vim
source ~/.vim/config/unite.vim
"source ~/.vim/config/nerd.vim

" my plugins
source ~/.vim/myplugins/run_django_test.vim

" language configs
source ~/.vim/config/python_lang.vim
source ~/.vim/config/latex_lang.vim

" tabs as 4 spaces and other tab stuff
set nosmartindent
set tabstop=4
set shiftwidth=4
set expandtab

" search stuff
set ic
set is

"map the comment toggling
let NERDCreateDefaultMappings=0
nmap <D-/> :call NERDComment(0, 'toggle')<cr>
imap <D-/> <C-o>:call NERDComment(0, 'toggle')<cr>

" replace the current word
nmap <leader>o *Ncgn

" buffer navigation
nnoremap <D-Left> :bprev<cr>
nnoremap <D-Right> :bnext<cr>
inoremap <D-Left> <C-o>:bprev<cr>
inoremap <D-Right> <C-o>:bnext<cr>
nnoremap <D-d> :bd<cr>

" Explore stuff
map <leader>xd :Explore<cr>
