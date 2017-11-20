"J .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here') 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" You complete me
Plugin 'Valloric/YouCompleteMe'

Plugin 'syntastic'

"Beskriver sig själv
syntax on

"Sätter tab ;*
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent

"visualiserar tab


"Numrerar rader
set number

set cursorline

"För att enklare kunna kopiera till system clipboard
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

map <C-n> :NERDTreeToggle<CR>
execute pathogen#infect()
call pathogen#helptags()

"Syntaxskit
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1

let g:syntastic_c_compiler_options = "-DFAKE"

