""""""""""""""""""""""""""""""""""""""""""""""""
" The following is for Vundle                  "
" See: https://github.com/VundleVim/Vundle.vim "
""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""
" My plugins                                   "
""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dracula/vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'tmux-plugins/vim-tmux' " https://github.com/tmux-plugins/vim-tmux

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""
" Include some of Bram Moolenaar's defaults "
"""""""""""""""""""""""""""""""""""""""""""""

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal


"""""""""""""""
" My settings "
"""""""""""""""

" Syntax highlighting
syntax on

" Settings for vim-airline
set t_Co=256
let g:airline_powerline_fonts=1
set encoding=utf-8
" let g:airline_theme='distinguished'
let g:airline_theme='onedark'
set ttimeoutlen=50

" Numbering
set number
set numberwidth=1

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
" endif

" Colorscheme settings
syntax on
set background=dark

" colorscheme onedark
" colorscheme atom
colorscheme palenight
" colorscheme dracula

" NERDTree settings (scrooloose/nerdtree)
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" Set tab behavior to insert 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Auto-indent
"set autoindent

" Enable mouse integration
set mouse=a

" Options for vim-markdown plugin
let g:vim_markdown_folding_disabled = 1

" Highlight search results
set hlsearch
