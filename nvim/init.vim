set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

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

call plug#end()

set encoding=UTF-8

" oceanic-next
if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme OceanicNext

" rainbow parens
let g:rainbow_active = 1
autocmd VimEnter * RainbowToggle

" normal VIMRC Input
source ~/.config/nvim/.vimrc
