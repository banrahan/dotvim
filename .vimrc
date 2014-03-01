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
nmap <leader>/ :call NERDComment(0, 'toggle')<cr>

" replace the current word
nmap <leader>o *Ncgn

" buffer navigation
nnoremap <D-Left> :bprev<cr>
nnoremap <D-Right> :bnext<cr>
inoremap <D-Left> <C-o>:bprev<cr>
inoremap <D-Right> <C-o>:bnext<cr>
nnoremap <leader>d :bd<cr>

" ctrl-p
nnoremap <leader>t :CtrlP<cr>

" Explore stuff
map <silent> ` :call ToggleVExplorer()<cr>

function! ToggleVExplorer() " Toggle Vexplore
if exists("t:expl_buf_num")
    let expl_win_num = bufwinnr(t:expl_buf_num)
    if expl_win_num != -1
        let cur_win_nr = winnr()
        exec expl_win_num . 'wincmd w'
        close
        exec cur_win_nr . 'wincmd w'
        unlet t:expl_buf_num
    else
        unlet t:expl_buf_num
    endif
else
    exec '1wincmd w'
    Vexplore
    let t:expl_buf_num = bufnr("%")
endif
endfunction
