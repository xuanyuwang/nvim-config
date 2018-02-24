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


" """"""""""""""""""""""""""""""""""""""""""""
" "             Compile and Run              "
" """"""""""""""""""""""""""""""""""""""""""""
" " Compile Python
" func CompileAndRun(instruction)
" 	write
" 	exec a:instruction
" endfunc
" 
" " auto compile based on file type
" autocmd FileType python nnoremap <F5> :call CompileAndRun("!clear && python3 %")<CR>


""""""""""""""""""""""""""""""""""""""""""""
"                 Comment                  "
""""""""""""""""""""""""""""""""""""""""""""
func Comment(prefix)
	let currentLine = getline(".")
	let newLine = a:prefix . " " . currentLine
	call setline(".", newLine)
endfunc

autocmd FileType python nnoremap <C-c> :call Comment("#")<CR>
autocmd FileType c nnoremap <C-c> :call Comment("\/\/")<CR>
