syntax on
filetype plugin indent on

" map
set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1

execute pathogen#infect()

" Enable syntactic syntax checking
map <Leader>s : SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" ghc-mod code completion
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>


" ctrl-p
map <silent> <Leader>t :CtrlP()<CR>
noremap <Leader>b<space> :CtrlPBuffer<CR>
let g:crlp_custom_ignore = '\v[\/]dist$'
let s:width = 80

function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")

    return repeat('-', s:width) . "\n"
    \      . "--  " . name . "\n"
    \      . "\n"
endfunction

nmap <silent> --s "=HaskellModuleSection()<CR>gp

let s:width = 80

function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let note = 1 < a:0 ? a:2 : inputdialog("Note: ")
    let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")

    return repeat('-', s:width) . "\n"
    \      . "-- |\n"
    \      . "-- Module       : " . name . "\n"
    \      . "-- Note         : " . note . "\n"
    \      . "-- \n"
    \      . "-- " . description . "\n"
    \      . "-- \n"
    \      . repeat('-', s:width) . "\n"
    \      . "\n"
endfunction

nmap <silent> --h "=HaskellModuleHeader()<CR>:0put = <CR>

" tabularize
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a: :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>


" Hoogle commands
nmap <leader>hs "zyiw:Hoogle .@z.<CR>

