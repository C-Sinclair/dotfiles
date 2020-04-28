
" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

try
	colorscheme OceanicNext " gruvbox
catch
	colorscheme slate
endtry

" Enable true color support
set termguicolors

set background=dark

" Vim airline theme
let g:airline_theme='space'

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow splitright

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" Set floating window to be slightly transparent
set winbl=10
