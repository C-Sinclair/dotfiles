scriptencoding utf-8

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/denite.vim
source ~/.config/nvim/coc.vim

" Leader
" ======
	let mapleader = ","
	let g:mapleader = ','

" Visual
" ======
	colorscheme OceanicNext " gruvbox

	set termguicolors
	set background=dark
	set encoding=UTF-8
	set t_CO=256
	set linespace=4
	set tabstop=4
	set shiftwidth=4
	set number relativenumber
	set nocursorline
	set noruler

" Splits
" ======
	set splitbelow splitright

	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

	map <Leader><Tab> :vsp<cr>
	map <Leader><Esc> :close<cr>

" Search
" ======
	set nohlsearch
	set incsearch

	" vmap ?? <esc>:silent exec firefox --search

" Navigation
" ==========
	nmap <Leader>zsh :tabedit ~/.zshrc<cr>  
	nmap <Leader>vim :tabedit ~/.config/nvim/init.vim<cr>  
	nmap <Leader>cl :tabedit ~/.lein/profiles.clj<cr>  
	nmap <Leader>hy :tabedit ~/.hyper.js<cr>  

" Shortcuts
" =========
	inoremap <C-d> <esc>ddi
	noremap H ^
	noremap L g_
	noremap J 5j
	noremap K 5k
	tnoremap <Leader><esc> <C-\><C-n>
	nmap ; :Denite buffer -split=floating -winrow=1<CR>
	nmap <leader>t :Denite file/rec -split=floating -winrow=1<CR>
	nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
	nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

	let g:user_emmet_leader_key=','

" CopyPaste
" =========
	set clipboard=unnamed

	map <C-c> "*y
	map <C-v> "*p
	
	" Copy to the end of the line
	map Y y$
	set t_BE=
		
" Undo
" ====
	nnoremap <leader>u :UndotreeToggle<cr>

" Files
" =====
	set noswapfile
	set undofile
	set undodir = "$HOME/.undo"

" Folding
" =======
	set foldmethod=indent
	set foldlevel=20
	set foldlevelstart=20

" ExtraVimrc
" ==========
	set exrc
	set secure

" AutoCommands
" ============
	augroup autosourcing
		autocmd!
		autocmd BufWritePost ~/.config/nvim/init.vim source %
	augroup END

	" Remember line in file for future return
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("\"") <= line("$") |
		\	exe "normal! g'\"" |
		\ endif
	autocmd BufRead * normal zz

	autocmd! BufReadPost,BufWritePost * Neomake

	autocmd! BufEnter * if &buftype == 'terminal' | :startinsert | endif

" NerdTree
" ========
	noremap <Leader>a :NERDTreeToggle<cr>
	map <C-t> :NERDTreeTabsToggle<cr>
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 0
	let NERDTreeAutoDeleteBuffer = 1

" " CtrlP
" " =====
" 	let g:ctrlp_custom_ignore = 'node_modules\|git'
" 	let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20'

" DevIcons
" ========
	let g:airline_powerline_fonts = 1
	let g:webdevicons_enable_nerdtree = 1
	let g:webdevicons_conceal_nerdtree_brackets = 1

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

" Javascript 
" ==========
	let g:javascript_conceal_function = "ƒ"
	let g:javascript_conceal_arrow_function = "⇒"
	let g:javascript_conceal_null = "Π"
	let g:javascript_conceal_this = "@"
	let g:syntastic_javascript_checkers = ['eslint']
	let g:jsx_ext_required = 0
	let g:ale_fixers = {
	 \ 'javascript': ['eslint']
	 \ }
	let g:ale_sign_error = '❌'
	let g:ale_sign_warning = '⚠️'
	let g:ale_fix_on_save = 1

" Misc
" ====
	noremap <Up> <NOP>
	noremap <Down> <NOP>
	noremap <Left> <NOP>
	noremap <Right> <NOP>
	" Disable Scroll
	noremap <Up> <NOP>
	noremap <Down> <NOP>
	noremap <Left> <NOP>
	noremap <Right> <NOP>
	" Disable Scroll
	set cmdheight=1
	set mouse=
	set shortmess=aT
	
