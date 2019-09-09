"""""""""""""""""""""""""""""""""""""""""""""
"               Vim   Customize             "
"""""""""""""""""""""""""""""""""""""""""""""
set number "line number
set relativenumber "relative line number
set cursorline "horizon cursor line
set cursorcolumn "vertical cursor line
let mapleader = " "
syntax on "syntax highlight

" folding
set foldmethod=indent
noremap <leader>f za

" Use visual bell instead of beeping
set visualbell

" Color Scheme
colorscheme slate

" Enable Language Specific Configuration
filetype plugin on
filetype plugin indent on

" Tab
set tabstop=4 " The width of a TAB is set to 4. It's still a \t. Just Vim will interpret it to be having a widget of 4
set shiftwidth=4 " Indent will have a widget of 4

" Show file options above the command line
set wildmenu

""""""""""""""""""""""""""""""""""""""""""""
"                 Plugin                   "
""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" autocompletor
Plug 'maralla/completor.vim', { 'commit': '4c58426a88ba056841b1d1b44536f2f85de120cc'}

" status line
Plug 'vim-airline/vim-airline'

" syntax highlight
Plug 'sheerun/vim-polyglot'

" Display Color in real time
" Plug 'cakebaker/scss-syntax.vim'

" fuzzy find (if installed using Homebrew)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" lint engine
Plug 'dense-analysis/ale'

call plug#end()

" configure completor.vim
let g:completor_auto_trigger=1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" configure fzf
" Open files in vertical horizontal split
nnoremap <C-p> :call fzf#run({
			\ 'down': '40%',
			\ 'sink': 'vertical botright split' })<CR>
