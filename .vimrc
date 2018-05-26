set tw=80
set tabstop=4
set shiftwidth=4
set scrolloff=10
set sidescrolloff=20
set number

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

" Powerline

let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
