set guifont=Menlo\ Regular:h20

syntax enable

if has('gui_running')
    set background=light
    colorscheme solarized
else
    "set background=dark
    "let g:solarized_visibility = "high"
    "let g:solarized_contrast = "high"
    let g:solarized_termtrans = 1
    colorscheme solarized
    "let g:solarized_termcolors=256
    let g:airline_theme = 'lucius'
endif

let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1

set number

set laststatus=2
