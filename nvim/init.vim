let mapleader =";"

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'jreybert/vimagit'
Plug 'ayu-theme/ayu-vim'
Plug 'axvr/photon.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
call plug#end()

" Appearance
    set termguicolors     " enable true colors support
    " colorscheme photon
    " set bg=light        " old theme
    let ayucolor = 'mirage'
    colorscheme ayu

" Airline
    let g:airline_powerline_fonts = 1
    let g:airline_theme='ouo'
    let g:airline#extensions#hunks#enabled=0
    let g:airline_section_warning = 0
    let g:airline_section_y = 0
    let g:airline_section_z = 0

" Misc
    " set go=a
    set mouse=a
    set nohlsearch
    set clipboard+=unnamedplus

    nnoremap c "_c
    set nocompatible
    filetype plugin on
    syntax on
    set encoding=utf-8
    set number nonumber " relativenumber

" Settings for COC
    set hidden
    set cmdheight=2
    set shortmess+=c

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    let g:go_def_mapping_enabled = 0

" Tabs
	set tabstop=4
	set shiftwidth=4
	set expandtab

" Buffers
    nmap <Leader><Tab> :bn<cr>      " Switch buffers

" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Nerd tree
	map <leader>a :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Open and close splits
	map <Leader>l :vsp<cr>
	map <Leader><Esc> :close<cr>

" Fuzzy search
	map <C-p> :Files<cr>
    map <C-b> :Buffers<cr>
    map <C-f> :Lines<cr>
    map <C-F> :Ag<cr>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Clean Writing
	" Open Goyo clean mode
	map <leader>f :Goyo 94%x94% \| set bg=light \| set linebreak<CR>
	" Close Goyo
	map <leader>F :Goyo!<CR>

    " Limelight
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
    let g:limelight_conceal_ctermfg = 240

" Enable Goyo by default for mutt writting
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost files,directories !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
    highlight! link DiffText MatchParen
endif

" Rebuild DWMblocks on config file change
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
