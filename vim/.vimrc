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
" Plugin 'tpope/vim-fugitive'

" syntax checker
Plugin 'scrooloose/syntastic'

" add delimeters to selected text
Plugin 'tpope/vim-surround'

" ui bar at the bottom
Plugin 'bling/vim-airline'

" shows which lines are added/removed/edited in git tree
Plugin 'airblade/vim-gitgutter'

" basic ide funcitonality as you type
Plugin 'Valloric/YouCompleteMe'

" Automatically add closing of delimeters
Plugin 'Raimondi/delimitMate'

" A much faster replacement for 99% of the uses of grep
Plugin 'rking/ag.vim'

"tree explorer plugin for navigating the filesystem
Plugin 'scrooloose/nerdtree'

" Easily navigate vim's undo tree visually
Plugin 'sjl/gundo.vim'

" Adds new operator 'gc' for easy commenting in many languages
Plugin 'tpope/vim-commentary'

" Autocomplete for python
" Plugin 'davidhalter/jedi-vim'"

" Tab completion
" Plugin 'ervandew/supertab'"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" """"" Jedi-VIM """""
" " Don't mess up undo history
" let g:jedi#show_call_signatures = "0"

" """"" SuperTab configuration """""
" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
" function! Completefunc(findstart, base)
"     return "\<c-x>\<c-p>"
" endfunction

" call SuperTabChain(Completefunc, '<c-n>')

" let g:SuperTabCompletionContexts = ['g:ContextText2']

""""""" Python stuff """""""
syntax enable
set number showmatch
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
let python_highlight_all = 1


" Setting the leader to space
let mapleader = " "

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

set number                     " Show current line number
set relativenumber             " Show relative line numbers

" allow airline to turn on
set laststatus=2
