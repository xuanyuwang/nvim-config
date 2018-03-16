" Vim global plugin for compile and run the current file
" Last Change: 2018, Feb, 24
" Maintainer: Xuanyu Wang <xuanyu.wang@outlook.com>
" License: This file is placed in the public domain.
" Note: This file was designed for private usage. It is not sure that
" 	if it compatible for your system and your vim.

if exists("g:loaded_compileAndRun")
	finish
endif
let g:loaded_compileAndRun = 1

""""""""""""""""""""""""""""""""""""""""""""
"             Compile and Run              "
""""""""""""""""""""""""""""""""""""""""""""
" Compile 
function s:CompileAndRun(instruction)
	write
	"echo a:instruction
	execute a:instruction
endfunction

" map the key F5 to this plugin
if !hasmapto('<Plug>CAR')
	map <unique> <F5> <Plug>CAR
endif

" use SID to identifies the current scipt
nnoremap <unique> <script> <Plug>CAR <SID>CompileAndRun

" auto compile based on file type
autocmd FileType python nnoremap <SID>CompileAndRun :call <SID>CompileAndRun("!clear && python3 %")<CR>
autocmd FileType java nnoremap <SID>CompileAndRun :call <SID>CompileAndRun("!clear && javac % && java %:t:r")<CR>
autocmd FileType perl nnoremap <SID>CompileAndRun :call <SID>CompileAndRun("!clear && perl %")<CR>
