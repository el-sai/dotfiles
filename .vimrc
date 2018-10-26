set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" let Vundle manage Vundle, required

Plugin 'Townk/vim-autoclose'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-python/python-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=2         " Tabs are 2 spaces
set expandtab         " Always use spaces rather than tabs characters
set shiftwidth=2      " Size of an 'indent'
set number

highlight ColorColumn ctermbg=DarkGray
set colorcolumn=80
set smartcase
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

syntax on             " Enable syntax highlighting
colorscheme onedark

let g:ctrlp_max_files=0
set ignorecase

highlight ExtraWhitespace guibg=#87d7ff ctermbg=Blue

:nnoremap <C-g> :NERDTreeToggle<CR>
:noremap <F4> :ColorToggle<CR>
:noremap <F3> :set hlsearch! hlsearch?<CR>
:noremap <F2> :ToggleWhitespace<CR>

let mapleader = "\<Space>"
nnoremap <Leader>r gt
nnoremap <Leader>e gT

" Remove any introduced trailing whitespace after moving...  
let g:DVB_TrimWS = 1

vmap "" c""<Esc>P
vmap (( c()<Esc>P
vmap [[ c[]<Esc>P
vmap {{ c{}<Esc>P

abbr tc :tabclose<CR>
