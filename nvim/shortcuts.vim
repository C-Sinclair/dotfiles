
" Navigation
" ==========
nmap <Leader>zsh :tabedit ~/.zshrc<cr>  
nmap <Leader>vim :tabedit ~/.config/nvim/init.vim<cr>  
nmap <Leader>cl :tabedit ~/.lein/profiles.clj<cr>  

" Shortcuts
" =========
inoremap <C-d> <esc>ddi
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k

" Copy to the end of the line
map Y y$

" Search
map <leader>h :%s///<left><left>

" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP


" Arrow Keys
" ==========
nnoremap <Left> h
nnoremap <Right> l
nnoremap <Up> k
nnoremap <Down> j

" Split Swapping
" ==============
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Leader><Tab> :vsp<cr>
map <Leader><Esc> :close<cr>

tnoremap <Leader><esc> <C-\><C-n>

" NoOps
" =====
	nmap <ScrollWheelUp> <nop>
	nmap <S-ScrollWheelUp> <nop>
	nmap <C-ScrollWheelUp> <nop>
	nmap <ScrollWheelDown> <nop>
	nmap <S-ScrollWheelDown> <nop>
	nmap <C-ScrollWheelDown> <nop>
	nmap <ScrollWheelLeft> <nop>
	nmap <S-ScrollWheelLeft> <nop>
	nmap <C-ScrollWheelLeft> <nop>
	nmap <ScrollWheelRight> <nop>
	nmap <S-ScrollWheelRight> <nop>
	nmap <C-ScrollWheelRight> <nop>

