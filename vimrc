"""""""""""""""""""""""""""""""""""""""""""""
"               Vim   Customize             "
"""""""""""""""""""""""""""""""""""""""""""""
set number "line number
set relativenumber "relative line number
set cursorline "horizon cursor line
set cursorcolumn "vertical cursor line
syntax on "syntax highlight

" Indentation
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" folding
set foldmethod=indent
noremap <space> za

" split
set splitright
set splitbelow

""""""""""""""""""""""""""""""""""""""""""""
"                 Plugin                   "
""""""""""""""""""""""""""""""""""""""""""""

" configure completor.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
