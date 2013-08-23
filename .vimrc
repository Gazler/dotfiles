call pathogen#infect()
set nocompatible
set scrolloff=3

set showcmd
set nobackup

set number
set ruler

set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

set autoindent

set cursorline

setlocal spell spelllang=en_us

set novisualbell

set t_Co=256

set backspace=indent,eol,start

set ts=2
set expandtab
set shiftwidth=2

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1

let mapleader = ","

set background=dark
colorscheme solarized

filetype indent plugin on

nnoremap j gj
nnoremap k gk

"Allow j and k to be used in the word completion menu
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

"Window jumping
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <F1> <Esc>
imap <F1> <Esc>

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

"Save vimrc after saving
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <leader>v :tabedit $MYVIMRC<CR>

set listchars=tab:>-,trail:¬
set list

autocmd FileType go setlocal nolist
