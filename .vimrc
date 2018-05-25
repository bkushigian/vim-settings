" Pathogen
execute pathogen#infect()


" From the Vim Tutorial
" danielmiessler.com/study/vim/#why

" Set "jk" as the <ESC> key for efficiency
inoremap jk <ESC>
" Set Leader Key
let mapleader = ","
let maplocalleader = "-"

filetype plugin indent on
syntax on

" Some basic settings
set encoding=utf-8
set nonumber
set ruler
set noautoindent
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=12
colorscheme brookstream

" Formatting
nnoremap <C-c> :ce<CR>
inoremap <C-c> <ESC>:ce<CR>A

" Pane editing
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Buffer Cycling
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>
nnoremap <A-p> :bprevious<CR>:redraw<CR>:ls<CR>

" Tab Shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Single Character Insert
:nnoremap <Space> i_<Esc>r

" Window Resize
nnoremap <C-w>> : vertical res +2<CR>
nnoremap <C-w>< : vertical res -2<CR>
nnoremap <C-S-w>> : vertical res +10<CR>
nnoremap <C-S-w>< : vertical res -10<CR>

" Change netrw sort
let g:netrw_sort_options = "i"

hi Normal ctermbg=none
" Spellcheck
setlocal spell spelllang=en_us
set nospell

" Rust Syntax
filetype on

au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.jad set filetype=jad
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.uir set filetype=uir
au BufNewFile,BufRead *.hail set filetype=hail
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.cup set filetype=cup
au BufNewFile,BufRead *.bcup set filetype=bcup
au BufNewFile,BufRead *.notcup set filetype=notcup
au BufNewFile,BufRead *.smt2 set filetype=smt2
au BufNewFile,BufRead *.fst set filetype=fst
au BufNewFile,BufRead *.fs set filetype=fst
au BufNewFile,BufRead *.fsi set filetype=fst
au BufNewFile,BufRead *.z3 set filetype=smt2

" Set path
set path=$PWD/**

" SCLang
let g:sclangTerm = "gnome-terminal -x $SHELL -ic"
let g:sclangPipeApp = "~/.vim/bundle/scvim/bin/start_pipe"

" Java Indenting
autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab

if filereadable(".vim.custom")
  so .vim.custom
endif

" nerdtree
map <Leader>n :NERDTreeToggle<CR>

" LaTeX Compile function
let texMain = 'main.tex'
let texArgs = ''

function TexCompile(texmain, texArgs)
    let main=a:texmain
    execute '!pdflatex' main 
endfunction

nmap <leader>tt :call TexCompile(texMain,texArgs )<CR><CR>
nmap <leader>mm :!make<CR>
nmap <leader>mc :!make clean<CR>
nmap <leader>mv :!make view<CR>
nmap <leader>mb :!make -B<CR>
nmap <leader>pp :!python<CR>
nmap <leader>si :!stack install<CR>


""" Getting rid of hlint
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>wm :call MarkWindowSwap()<CR>
nmap <silent> <leader>wp :call DoWindowSwap()<CR>

" Attempting Java Man Pages
let $jre='/usr/lib/jvm/java-8-openjdk-amd64/jre'
map tt yy:tabnew ^R^W^M
map + tt:set ft=java^M!!javap -public `grep .*%$ $jre/lib/classlist`^M


" Hex stuff
nnoremap <C-X> :Hexmode<CR>
inoremap <C-X> <Esc>:Hexmode<CR>
vnoremap <C-X> :<C-U>Hexmode<CR>
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
