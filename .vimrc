" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

"########  PLUGINS
" Install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Set plugin directory
call plug#begin('~/.vim/plugged')
" Themes
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'yangmillstheory/vim-snipe'
Plug 'tpope/vim-surround'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'pelodelfuego/vim-swoop' 
Plug 'fholgado/minibufexpl.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf.vim'
Plug 'hecal3/vim-leader-guide'

" Syntax
Plug 'ajh17/VimCompletesMe'
Plug 'ludovicchabant/vim-gutentags'

"Git
Plug 'tpope/vim-fugitive'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Javascript
Plug 'pangloss/vim-javascript'

" HTML
Plug 'mattn/emmet-vim'

" Rust
Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()
"########  END

" Completion 
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Files
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*\\node_modules\\*,*.swp,*.zip,*.exe  " Windows

" Ctrl p
let g:ctrlp_user_command = 'fd -c never -t file'
" Ctrl Space
let g:CtrlSpaceGlobCommand = 'rg -l --color never .' 

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8
set gfn=Hack:h11

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set showtabline=0
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" GUI
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
" set listchars=tab:\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:onedark_termcolors=256
let g:onedark_hide_endofbuffer=1
let g:airline_theme='one'

colorscheme one
