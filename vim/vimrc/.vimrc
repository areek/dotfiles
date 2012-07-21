call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
" pathogen setting
syntax on
filetype plugin indent on
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
" Ack-vim setting
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" Rope-vim setting
let $PYTHONPATH .= ":/home/areek/dotfiles/vim/bundle/ropevim:/home/areek/dotfiles/vim/bundle/ropevim.vim"
source /home/areek/dotfiles/vim/bundle/ropevim/ropevim.vim
let ropevim_vim_completion=1
" rope-omni integration
autocmd FileType python setlocal omnifunc=RopeCompleteFunc
