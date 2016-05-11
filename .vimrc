syntax enable                           " enable syntax processing

set tabstop=4                           " number of visual spaces per TAB
set shiftwidth=4						" when indenting with >, use 4 spaces

set softtabstop=4                       " number of spaces in tab when editing

set number                              " show line numbers

set showcmd                             " show command in bottom bar

set cursorline                          " highlight current line

filetype indent on                      " load filetype-specific indent files

set wildmenu                            " visual autocomplete for command menu

set lazyredraw                          " redraw only when we need to

set showmatch                           " highlight matching [{()}]

set incsearch                           " search as characters are entered

set hlsearch                            " highlight matches

nnoremap <leader><space> :nohlsearch<CR>" turn off search highlight

set foldenable                          " enable folding

set foldlevelstart=10                   " open most folds by default

set foldnestmax=10                      " 10 nested fold max

" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <F7> :tabp <CR>
nnoremap <F8> :tabn <CR>
nnoremap <F12> :w <CR>
nnoremap <C-F12> :wq <CR>

inoremap <C-BS>	<C-W>

syntax on
colorscheme desert
