" Plugins
" ======
	call plug#begin(stdpath('data') . '/plugged')

	" SuperPowers
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-commentary'
		Plug 'mbbill/undotree'
		" Plug 'ntpeters/vim-better-whitespace'
		Plug 'rstacruz/vim-closer'
		Plug 'easymotion/vim-easymotion'
		Plug 'w0rp/ale'

	" Intellisense Engine
		Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

	" Visuals
		Plug 'equalsraf/neovim-qt'
		Plug 'flazz/vim-colorschemes'

	" " Navigation
	" 	Plug 'ctrlpvim/ctrlp.vim'

	" Git
		Plug 'tpope/vim-fugitive'
		Plug 'airblade/vim-gitgutter'
		Plug 'Xuyuanp/nerdtree-git-plugin'

	" NerdTree
		Plug 'scrooloose/nerdtree'
		Plug 'jistr/vim-nerdtree-tabs'
		Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	" Tmux
		Plug 'christoomey/vim-tmux-navigator'

	" Generic
		Plug 'sheerun/vim-polyglot'
		Plug 'Chiel92/vim-autoformat'
		Plug 'gko/vim-coloresque'
		Plug 'jiangmiao/auto-pairs'
		Plug 'neomake/neomake'
		Plug 'luochen1990/rainbow'

	" Javascript
		Plug 'othree/yajs.vim'
		Plug 'moll/vim-node'
		Plug 'othree/vim-better-javascript-completion'
		Plug '1995eaton/vim-better-javascript-completion'
		Plug 'pangloss/vim-javascript'
		Plug 'mxw/vim-jsx'
		Plug 'Chiel92/vim-autoformat'
	
	" Clojure
		Plug 'tpope/vim-fireplace', 
		Plug 'guns/vim-clojure-static'
		Plug 'tpope/vim-salve'

	" Go
		Plug 'stamblerre/gocode'
		Plug 'deoplete-plugins/deoplete-go'

	" Swift
		Plug 'keith/swift.vim'

	" Html
		Plug 'mattn/emmet-vim'

	" Files
		Plug 'tpope/vim-vinegar'

	" Autocomplete
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'Shougo/neosnippet.vim'
		Plug 'Shougo/neosnippet-snippets'

	if has('nvim')
	  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/defx.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif

	" FileExplorer
		Plug 'Shougo/denite.nvim'

	" Icons
		Plug 'mhartington/defx-devicons'
		Plug 'ryanoasis/vim-devicons'

	call plug#end()
