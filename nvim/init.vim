call plug#begin('~/.vim/plugged')
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/yajs.vim'
Plug 'tpope/vim-commentary'
" Plug 'jiangmiao/auto-pairs'
Plug 'habamax/vim-asciidoctor'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
" Plug 'connorholyday/vim-snazzy'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" Plug 'phanviet/vim-monokai-pro'
Plug 'morhetz/gruvbox'
call plug#end()

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
set number
set relativenumber
set rnu

" Theme
syntax enable
" colorscheme snazzy
if (has("termguicolors"))
  set termguicolors
endif
" set background=dark
colorscheme gruvbox
" let g:lightline = {
" \ 'colorscheme': 'gruvbox',
" \ }

" Fix kitty
let &t_ut=''

let g:ranger_map_keys = 0

" Leader stuff
let mapleader = " "

" Remap ESC!
imap jk <Esc>

" Other helpful shortcuts (clear highlight)
nnoremap <leader>cs :let @/=""<CR>
nnoremap <leader>sf :w!<CR>
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j
nnoremap <leader>ve :tabedit ~/.config/nvim/init.vim<CR>
nnoremap <leader>re :so %<CR>
nnoremap <leader>q :q!<CR>

" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>t <cmd>Telescope file_browser<cr>

nnoremap <leader>cd :lcd %:p:h<cr>
nnoremap <leader>ca :cd %:p:h<cr>

" Window movement
noremap <C-H> <C-w>h
noremap <C-J> <C-w>j
noremap <C-K> <C-w>k
noremap <C-L> <C-w>l

" Navigate tabs & windows easily
nnoremap <C-t> gt<CR>
nnoremap <leader>w <C-w><C-w>

" Will use later with regs, looks helpful though
vnoremap <leader>p "_dP

