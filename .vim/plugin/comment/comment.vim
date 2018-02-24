" Vim global plugin for commenting a single line of source code
" Last Change: 2018, Feb, 24
" Maintainer: Xuanyu Wang <xuanyu.wang@outlook.com>
" License: This file is placed in the public domain.
" Note: This file was designed for private usage. It might not compitable to
" 	your system and your vim.
"
" Prevent the script is loaded many times
if exists("g:loaded_comment")
	finish
endif
let g:loaded_comment = 1

" Body
"
function s:Comment(prefix)
	let currentLine = getline(".")
	let newLine = a:prefix . " " . currentLine
	call setline(".", newLine)
endfunction

" map the key <Ctrl-c> to this plugin
if !hasmapto('<Plug>Comment')
	map <unique> <C-c> <Plug>Comment
endif

" use SID to identifies the current script
nnoremap <unique> <script> <Plug>Comment <SID>Comment

" auto comment a line based on file type
autocmd FileType python nnoremap <SID>Comment :call <SID>Comment("#")<CR>
autocmd FileType c nnoremap <SID>Comment :call <SID>Comment("\/\/")<CR>
