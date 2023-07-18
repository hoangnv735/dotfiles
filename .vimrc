" download vim-plug if it's missing
" Plugins {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

filetype on
filetype plugin on
filetype plugin indent on
set nu 
set tabstop=4
set ruler 
set title
" y and d put stuff into system clipboard (so that other apps can see it)
set clipboard=unnamed,unnamedplus    

" NERDTree key map {{{
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" }}}

" Move line and block {{{
" move current line down 1 line
" j i created by typing Ctrl-v Alt-j in vim
" editing in other editor doent work
" the root of problem i terminal does have Alt
" nnoremap j :m .+1<CR>==           
" move current line up 1 line
" nnoremap k :m .-2<CR>==           
" move current line down 1 line
" inoremap j <Esc>:m .+1<CR>==gi    
" move current line up 1 line
" inoremap k <Esc>:m .-2<CR>==gi    
" move current hightlighted block down 1 line
" vnoremap j :m '>+1<CR>gv=gv      
" move current hightlighted block up 1 line
" vnoremap k :m '<-2<CR>gv=gv      
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

"" vimrc file config {{{
"function! VIMSET()
"    set foldmethod=marker
"    set nowrap
"endfunction
"autocmd FileType zsh,vim call VIMSET()
"" }}}

" csv config {{{
function! CSVSET()
    " Performance optimization
    let g:csv_start = 1
    let g:csv_end = 100

    " Move filtered lines to the end
    " Disabled because it is too slow
    " let g:csv_move_folds = 1

    " Align columns. THIS MODIFIES THE FILE!
    nmap <leader>a ggVG:ArrangeColumn<CR>
    nmap <leader>dc :DeleteColumn<CR>

    set colorcolumn=
    " If there's newline in quote, set following:
    " let g:csv_nl = 1
endfunction
autocmd FileType csv call CSVSET()
" }}}
