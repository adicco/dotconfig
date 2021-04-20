" Adicco's vim config

call plug#begin('~/.vim/plugged')
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/yajs.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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

" FZF key bindings
nnoremap <C-f> :FZF<CR>
nnoremap <C-g> :Ag<CR>

" Window movement
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

let g:fzf_action = { 'ctrl-v': 'vsplit' }

" Mappings to access buffers (don't use "\p" because a
" nnoremap <Leader>l :ls<CR>
" nnoremap <Leader>b :bp<CR>
" nnoremap <Leader>f :bn<CR>
" nnoremap <Leader>g :e#<CR>
