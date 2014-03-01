" Unite
let g:unite_source_history_yank_enable = 1
let g:unite_data_directory='~/.unite/.cache/'
let g:unite_source_rec_max_cache_files = 5000

call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <leader>f :<C-u>UniteWithBufferDir -no-split -start-insert file<cr>
nnoremap <leader>F :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
