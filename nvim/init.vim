call plug#begin('~/.vim/plugged')
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/yajs.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'habamax/vim-asciidoctor'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'connorholyday/vim-snazzy'
call plug#end()

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab

" Theme
syntax enable
colorscheme snazzy
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

" Fix kitty
let &t_ut=''

" Leader stuff
let mapleader = " "

" FZF key bindings
nnoremap <C-f> :FZF<CR>
nnoremap <leader>f :GFiles<CR>
nnoremap <C-g> :Ag<CR>

" Window movement
noremap <C-H> <C-w>h
noremap <C-J> <C-w>j
noremap <C-K> <C-w>k
noremap <C-L> <C-w>l

" Navigate tabs easily
nnoremap <C-T> gt<CR>
nnoremap <leader>t gt<CR>
nnoremap <leader>w <C-w><C-w>
vnoremap <leader>p "_dP

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Mappings to access buffers (don't use "\p" because a
" nnoremap <Leader>l :ls<CR>
" nnoremap <Leader>b :bp<CR>
" nnoremap <Leader>f :bn<CR>
" nnoremap <Leader>g :e#<CR>
