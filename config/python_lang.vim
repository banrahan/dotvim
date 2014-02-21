autocmd filetype python nnoremap <buffer> <leader>z :exec '!python' shellescape(@%, 1)<cr>

nmap <leader>5 :DjangoRunTest<cr>

" Sytastic Settings
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = "--ignore=E501 --ignore=E128 --max-line-length=160"

let g:jedi#popup_on_dot=0
