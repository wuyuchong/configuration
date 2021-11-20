set nocompatible
imap jk <Esc>

" --------------------> plugin
" vim-plug: Specify a directory for plugins
" - For vim: '~/.vim/plugged'
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes

" basic
" Plug 'tpope/vim-sensible'
" Plug 'easymotion/vim-easymotion'
" Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Olical/aniseed'
Plug 'jlesquembre/nterm.nvim'
Plug 'preservim/nerdcommenter'
Plug 'Shougo/deol.nvim'

" theme
Plug 'folke/lsp-colors.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'morhetz/gruvbox'
" Plug 'w0ng/vim-hybrid'

" language
Plug 'sheerun/vim-polyglot'
Plug 'davidhalter/jedi-vim'
Plug 'jalvesaq/Nvim-R'
" Plug 'jpalardy/vim-slime', { 'for': 'python' }
" Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'bfredl/nvim-ipy'

" lsp
Plug 'dense-analysis/ale'
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'Shougo/deoplete.nvim'
" Plug 'deoplete-plugins/deoplete-jedi'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'

" pandoc
" Plug 'rstudio/rmarkdown'
" Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'goerz/jupytext.vim'


call plug#end()
" -------------------------------------------


" --------------------> asyncomplete
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" 
" let g:asyncomplete_auto_completeopt = 0
" set completeopt=menuone,noinsert,noselect,preview
" -------------------------------------------


" --------------------> supertab
" let g:SuperTabDefaultCompletionType = "<c-n>"
" -------------------------------------------


" --------------------> jedi
" let g:jedi#popup_on_dot = 0
" -------------------------------------------


" --------------------> deoplete
" let g:deoplete#enable_at_startup = 1
" -------------------------------------------

" --------------------> vim-repl
let g:repl_program = {
            \   'python': 'ipython',
            \   'r': 'R',
            \   'lua': 'lua',
            \   }
let g:repl_predefine_python = {
            \   'numpy': 'import numpy as np',
            \   'matplotlib': 'from matplotlib import pyplot as plt'
            \   }
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
nnoremap <leader>r :REPLToggle<Cr>
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>
let g:repl_position = 3
" -------------------------------------------

set termguicolors
colorscheme nord
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE

" colorscheme gruvbox
" colorscheme hybrid

set nospell
