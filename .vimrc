set tw=80
set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=4
set sidescrolloff=5
set number
set relativenumber
set nowrap
set cursorline
set spell


" Handy Shortcut
nmap <C-j> i<CR><ESC>
nmap <C-S-j> <CR><ESC>

" BUFFERS
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" TABS
nnoremap tn :tabnew<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap td :tabclose<CR>

let mapleader = ","

" NERDTree
map <leader>n :NERDTreeToggle<CR>
"
" Powerline
let g:Powerline_symbols = 'fancy'
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

