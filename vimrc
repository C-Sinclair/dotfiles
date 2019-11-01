so ~/.vim/plugins.vim

if !exists("g:syntax_on")
    syntax enable
endif

set number relativenumber						                        "show line numbers
set backspace=indent,eol,start
set nocompatible


let mapleader = ','


"---Visuals---
colorscheme badwolf
set t_CO=256
set guifont=Fira_Code:h17
set linespace=15
set cursorline

"---Tabs---
set tabstop=4
set shiftwidth=4


"---Splits---
set splitbelow splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l										"navigate around splits with Ctrl + _

set autochdir
"map <Tab> <C-W>W:cd %:p:h<CR>:<CR>						"tab between splits

map <Leader><Tab> :vsp<cr>								"open new split
map <Leader><esc> :close<cr>							"close current split

"---Search---
set hlsearch
set incsearch


"---CopyPaste---
vnoremap <C-c> "*y :let @+=@*<cr>
map <C-v> "*P


"---Mappings---
"---Mappings---

"|||---Navigation---
nmap <Leader>vim :tabedit $MYVIMRC<cr> 			        "edit vimrc
nmap <Leader>vpl :tabedit ~/.vim/plugins.vim<cr>	    "edit vim plugins
nmap <Leader>bash :tabedit ~/.bashrc<cr>		        "edit bashrc
nmap <Leader>cl :tabedit ~/.lein/profiles.clj<cr>	    "edit lein profiles
nmap <Leader>hy :tabedit ~/.hyper.js<cr>				"edit hyper terminal config
nmap <Leader>zsh :tabedit ~/.zshrc<cr>					"edit zshrc

nmap <C-l> :CtrlPMRUFiles<cr>							"Show most recent files

"|||---Shortcuts---"
nmap <Leader><space> :nohlsearch<cr>			        "remove search highlighting

"---AutoCommands---"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %			"source vimrc on save
	autocmd BufWritePost .bashrc source %			"source bashrc on save
	autocmd BufWritePost ~/.vim/plugins.vim source %
augroup END

"---Filetypes---
au Filetype clojure nmap <c-c><c-k> :Require<cr>





"replace next <++> whilst in insert mode
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

"---Html---
augroup htmltags
	autocmd!
	autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
	autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>2ki
	autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;4 <h4></h4><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;5 <h5></h5><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;6 <h6></h6><Enter><Enter><++><Esc>2kf<i
augroup END	


"---CtrlP---
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20'

"---NERDTree---
let NERDTreeHijackNetrw = 0
