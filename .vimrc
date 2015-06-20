set nocompatible 
filetype off

" https://github.com/gmarik/Vundle.vim.git 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'

call vundle#end()

filetype plugin indent on

colorscheme molokai

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
syntax on

nmap <F8> :TagbarToggle<CR>
