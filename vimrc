set nocompatible
filetype on

:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

let g:markdown_fenced_languages = ['sql', 'python', 'r']

inoremap kj <esc>
inoremap jk <esc>

call plug#begin('~/.vim/plugged')

" Plug 'dense-anaysis/ale'
" Plug 'mhinz/vim-startify'
Plug 'w0ng/vim-hybrid'
" Plug 'morhetz/gruvbox'
Plug 'shmup/vim-sql-syntax'
" Plug 'scrooloose/syntastic'
" Plug 'sheerun/vim-polyglot'
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
Plug 'rstudio/rmarkdown'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'thinca/vim-quickrun'
Plug 'jalvesaq/Nvim-R'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'metakirby5/codi.vim'
" Plug 'preservim/nerdtree'
Plug 'karoliskoncevicius/vim-sendtowindow'

call plug#end()

" colorscheme gruvbox
set background=dark
colorscheme hybrid
set nospell
set hlsearch
