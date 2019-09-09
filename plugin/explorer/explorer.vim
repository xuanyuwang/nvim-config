if exists("g:explorer")
	finish
endif
let g:explorer = 1

""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_winsize = 25
" set list style. press i in netrw will cycle the styles
let g:netrw_liststyle = 3
""""""""""""""""""""""""""""""""""""""""""""""""

function s:explorer()
	execute "Lexplore"
endfunction

if !hasmapto('<Plug>Explorer')
	map <unique> <leader>e <Plug>Explorer
endif

noremap <script> <unique> <Plug>Explorer <SID>explorer

noremap <SID>explorer :call <SID>explorer()<CR>
