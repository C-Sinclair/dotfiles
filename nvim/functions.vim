function! formatJS()
	let l:winview = winsaveview()
	
	call winrestview(l:winview)
endfunction
command formatJS :call formatJS()

autocmd BufWritePre *.js formatJS

