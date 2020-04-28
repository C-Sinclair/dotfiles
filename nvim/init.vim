scriptencoding utf-8

source ~/.config/nvim/plugins.vim

let mapleader = " "
let g:mapleader = ' '

set encoding=UTF-8

" Misc Search
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Reread file if changed externally
set autoread

set clipboard=unnamed

for file in split(glob('~/.config/nvim/settings/*.vim'))
	exe 'source' file 	
endfor

source ~/.config/nvim/shortcuts.vim

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

autocmd! BufEnter * if &buftype == 'terminal' | :startinsert | endif

" DevIcons
" ========
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
