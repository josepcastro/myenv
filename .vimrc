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
nnoremap <F1> :call NERDComment(0,"toggle") <CR>
nnoremap <F2> :set invpaste paste?<CR>
nnoremap <F7> :tabp <CR>
nnoremap <F8> :tabn <CR>
nnoremap <F12> :w <CR>
nnoremap <C-F12> :wq <CR>
nnoremap <C-D> @:<CR>

syntax on
colorscheme elflord 

"Nerd Commenter Plugin
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" necessary for plugin manager vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin that implements ctrl+p search
Plugin 'https://github.com/kien/ctrlp.vim'

" Autocomplete words with tab
Plugin 'https://github.com/ervandew/supertab'

" Commenter
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
