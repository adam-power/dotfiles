" The following is code for Vundle
" Source: https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins go here
Plugin 'tmux-plugins/vim-tmux' " https://github.com/tmux-plugins/vim-tmux
Plugin 'tpope/vim-commentary' " https://vimawesome.com/plugin/commentary-vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Include some of Bram Moolenaar's defaults
"" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

"" Show @@@ in the last line if it is truncated.
set display=truncate

"" Show a few lines of context around the cursor.  Note that this makes the
"" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

"" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

"" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
"" confusing.
set nrformats-=octal


" My settings

" Syntax highlighting
syntax on

" Numbering
set number
set numberwidth=2

" Spaces not tabs
set softtabstop=2
set shiftwidth=2
set expandtab
