call plug#begin(stdpath('data') . '/plugged')
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ciaranm/securemodelines'              " Secure modelines against vulnerabilities
Plug 'editorconfig/editorconfig-vim'        " editorconfig
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'itchyny/lightline.vim'
" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()


scriptencoding utf-8
let mapleader = ","
set laststatus=2
set scrolloff=10
set nowrap
set undofile
set noswapfile
set number
set mouse=a
set clipboard+=unnamedplus
set autochdir
set autowrite
set autoread
set termguicolors
set autoread
set autowrite
set hidden
set expandtab
set termguicolors

 
set completeopt=menu,menuone,noinsert,noselect

" make Y behave like D (till end of line)
nnoremap Y y$

" auto center screen on matched string
noremap n nzz
noremap N Nzz

" :(
command! W w
command! Wq wq
command! WQ wq

" Unhighlight by pushing leader twice.
nnoremap <leader><leader> :nohlsearch<CR>
" Opens a vertical split with the vim rc file
nnoremap <leader>ev :e $MYVIMRC<cr>
" Re-sources the vim rc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" Maps ESC to exit terminal's insert mode
tnoremap <Esc> <C-\><C-n>

let g:lightline = { 'colorscheme': 'wombat' }

