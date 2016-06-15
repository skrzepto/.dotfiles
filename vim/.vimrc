set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'Lokaltog/powerline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'ervandew/supertab'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'klen/python-mode'

" A much faster replacement for 99% of the uses of grep
Plugin 'rking/ag.vim'

"tree explorer plugin for navigating the filesystem
Plugin 'scrooloose/nerdtree'

" Easily navigate vim's undo tree visually
Plugin 'sjl/gundo.vim'

" Adds new operator 'gc' for easy commenting in many languages
Plugin 'tpope/vim-commentary'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Setting the leader to space
let mapleader = " "


let g:pymode_rope=0

" Useful shortcuts with leader
nnoremap <leader>n :NERDTreeToggle<CR>

nnoremap <Leader>g :GundoToggle<CR>

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
Bundle 'https://github.com/freeo/vim-kalisi'
set t_Co=256
colorscheme kalisi
" set background=light
set background=dark
" if you don't set the background, the light theme will be used
syntax enable
" set background=dark
" colorscheme solarized

nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr> 

