call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

filetype plugin indent on
set nu 
set ruler 

" NERDTree key map {{{
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" }}}

" Move line and block {{{
nnoremap <A-j> :m.+1<CR>==           " move current line down 1 line
nnoremap <A-k> :m.-2<CR>==           " move current line up 1 line
inoremap <A-j> <Esc>:m.+1<CR>==gi    " move current line down 1 line
inoremap <A-k> <Esc>:m.-2<CR>==gi    " move current line up 1 line
vnoremap <A-j> :m'>+1<CR>gv=gv      " move current hightlighted block down 1 line
vnoremap <A-k> :m'<-2<CR>gv=gv      " move current hightlighted block up 1 line
" }}}

" Auto complete {{{
function! MyTabCompletion()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-P>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=MyTabCompletion()<CR>
" }}}
