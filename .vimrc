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


"powerline-requirements
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'

nmap <F8> :TagbarToggle<CR>
