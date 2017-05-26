set nocompatible 
filetype off

"install vundle https://github.com/gmarik/Vundle.vim.git 
let freshinstall=1
if !filereadable(expand('~/.vim/bundle/Vundle.vim/README.md'))
   echo "This is your first start with Vundle, installing...\n"
   silent !mkdir -p ~/.vim/bundle
   silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
   let freshinstall=0
endif

"set plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ctrlp.vim'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

"install plugins if needed
if freshinstall == 0
  echo "Installing Plugins \n"
  :PluginInstall
endif



filetype plugin indent on

colorscheme molokai

set grepprg=grep\ -nH\ $*
syntax on

let mapleader = ";"

"powerline-requirements
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'

"Toggle intendation for copynpaste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"Undo
set undodir=~/.vim/undodir
set undofile
set undolevels=100 "maximum number of changes that can be undone
set undoreload=1000 "maximum number lines to save for undo on a buffer

" create undodir and backup dir
silent !mkdir ~/.vim/{backup,undodir}> /dev/null 2>&1

"Tabbing
set tabstop=4
set shiftwidth=4
set expandtab


"Tagbarkey
nmap <F8> :TagbarToggle<CR>


"latex (depends on vim-latexsuite package)
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'zathura'
let g:Tex_SmartKeyBS = 0
let g:Tex_SmartKeyQuote = 0
let g:Tex_SmartKeyDot = 0
let g:Imap_UsePlaceHolders = 0

"syntax checker
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E221,E261,E302,E241,E231,E126,E203,E123,E226,E201,E202,E226,W503,E228'
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_yaml_yamllint_args = '-c ~/.vim/yamllint'
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprevious<CR>

"gitgutter
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_map_keys = 0

"fuzzy finder
let g:ctrlp_map = '<leader>f'
