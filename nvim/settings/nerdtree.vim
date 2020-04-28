
" === NERDTree === "
" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

" Custom icons for expandable/expanded directories
let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^node_modules$', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

let NERDTreeDirArrows = 0

noremap <Leader>a :NERDTreeToggle<cr>
map <C-t> :NERDTreeTabsToggle<cr>
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1

" Close Vim if NERDTree is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

