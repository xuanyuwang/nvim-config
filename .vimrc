"""""""""""""""""""""""""""""""""""""""""""""
"               Vim   Customize             "
"""""""""""""""""""""""""""""""""""""""""""""
set number "line number
set relativenumber "relative line number
set cursorline "horizon cursor line
set cursorcolumn "vertical cursor line
syntax on "syntax highlight

" folding
set foldmethod=indent
noremap <space> zA

" Use visual bell instead of beeping
set visualbell

" Color Scheme
colorscheme slate

" Enable Language Specific Configuration
filetype plugin on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""
"                 Plugin                   "
""""""""""""""""""""""""""""""""""""""""""""

" configure completor.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
