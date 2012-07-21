" pathogen settings
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" supertab settings
let g:SuperTabDefaultCompletionType = "context"

" tagbar settings
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" solarized settings
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized"
