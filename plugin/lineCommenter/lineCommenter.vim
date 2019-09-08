if exists("g:lineCommenter")
	finish
endif
let g:lineCommenter = 1

function s:lineCommenter(prefix)
	let prefix = a:prefix
	let prefixLen = strchars(prefix)
	let currentLine = getline(".")
	let currentLine = trim(currentLine)
	if match(currentLine, prefix) == 0
		execute "normal! ^" . repeat("x", prefixLen)
	else
		execute "normal! ^i" . prefix
	endif
endfunction

if !hasmapto('<Plug>LinecommenterComment')
	map <unique> <leader>/ <Plug>LinecommenterComment
endif

noremap <script> <unique> <Plug>LinecommenterComment <SID>lineCommenter

autocmd FileType javascript noremap <SID>lineCommenter :call <SID>lineCommenter("//")<CR>
