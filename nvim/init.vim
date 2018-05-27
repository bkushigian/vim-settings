set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" normal VIMRC Input
source ~/.config/nvim/.vimrc

let mapleader = ","

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

call plug#end()

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
RainbowToggleOn()

" Handy Shortcut
nmap <C-j> i<CR><ESC>
