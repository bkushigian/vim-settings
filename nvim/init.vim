set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let mapleader = ","
let maplocalleader = ","

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'guns/vim-sexp'
Plug 'luochen1990/rainbow'
Plug 'mhartington/oceanic-next'
Plug 'neomake/neomake'
Plug 'powerline/powerline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tounaishouta/coq.vim'

call plug#end()

" normal VIMRC Input
source ~/.config/nvim/.vimrc

set encoding=UTF-8


" oceanic-next
if (has("termguicolors"))
	set termguicolors
endif
syntax enable

"" The following settings are for OceanicNext
" colorscheme OceanicNext

"" The following settings are for Hybrid colorscheme
" colorscheme hybrid_material
colorscheme hybrid_reverse
let g:airline_theme = "hybrid"
hi Normal guibg=None ctermbg=None

set background=dark
let g:enable_bold_font = 1
let g:enable_italic_font = 1

" rainbow parens
let g:rainbow_active = 1
autocmd VimEnter * RainbowToggle
" autocmd VimEnter * RainbowToggleOn

" Handy Shortcut

" This allows to call ENTER from inside a line
nmap <C-j> i<CR><ESC>


" NEOMAKE
map <leader>mm :Neomake!<CR>
map <leader>M :w<CR>:Neomake!<CR>
map <C-m> :w<CR>:Neomake!<CR>
let g:neomake_open_list=2

" Highlighting
" Match all trailing whitespace
highlight TrailingWS ctermbg=red guibg=maroon
match TrailingWS /\s\+$/
