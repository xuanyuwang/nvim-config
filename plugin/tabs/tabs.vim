if exists("g:tabs")
	finish
endif
let g:tabs = 1

" open files in a left split buffer
let g:netrw_browse_split = 2

noremap <leader><Tab> :tabnext<CR>
