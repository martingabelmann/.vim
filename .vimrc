set nocompatible 
filetype off

" https://github.com/gmarik/Vundle.vim.git 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'

Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

filetype plugin indent on

colorscheme molokai

set grepprg=grep\ -nH\ $*
syntax on

set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'

nmap <F8> :TagbarToggle<CR>
