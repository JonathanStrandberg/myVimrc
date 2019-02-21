"J .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

"3 wat diff should be vertical
set diffopt+=vertical

autocmd BufWritePre * %s/\s\+$//e
set laststatus=2
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'sheerun/vim-polyglot'

Plugin 'syntastic'

Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vale1410/vim-minizinc'

Plugin 'tmux-plugins/vim-tmux-focus-events'

Plugin 'roxma/vim-tmux-clipboard'

Plugin 'airblade/vim-gitgutter'

Plugin 'justinmk/vim-syntax-extra'

Plugin 'rhysd/vim-clang-format'

" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" " `:help :Glaive` for usage.
" Plugin 'google/vim-glaive'

"Beskriver sig själv
syntax on

"Sätter tab ;*
set tabstop=4
"set shiftwidth=4
set autoindent
set smartindent
set cindent
set expandtab

"visualiserar tab
"set list
"set listchars=tab:>-

"Numrerar rader
set number

set ruler
" set cursorline

"För att enklare kunna kopiera till system clipboard
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

map <C-n> :NERDTreeToggle<CR>
execute pathogen#infect()
call pathogen#helptags()

"Syntaxskit
execute pathogen#infect()
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1
let g:syntastic_haskell_checkers = ['hlint']
" Om man vill ha till kompilering, DFAKE i det här fallet är från ett gammalt projekt
" let g:syntastic_c_compiler_options = "-DFAKE"

"let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_confcpp.py'
" Clipboard sharing?
" set clipboard+=unnamed
"
" Clang format
let g:clang_format#code_style = 'llvm'

colorscheme molokai
" Spellcheck for tex
au BufReadPost,BufNewFile *.md,*.txt,*.tex set spell spelllang=en_us

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "UseTab" : "true"}

colorscheme molokai
" Spellcheck for tex
au BufReadPost,BufNewFile *.md,*.txt,*.tex set spell spelllang=en_us

" Compile the current .tex-file to produce a pdf
autocmd BufNewFile,BufRead *.tex noremap <F12> :w<Return>:!pdflatex %<Return>

set encoding=utf-8
