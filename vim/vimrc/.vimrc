" pathogen settings
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" supertab settings
let g:SuperTabDefaultCompletionType = "context"

" tagbar settings
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>
