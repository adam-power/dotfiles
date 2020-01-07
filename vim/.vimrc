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
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dracula/vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'stephpy/vim-yaml'
Plugin 'tmux-plugins/vim-tmux' " https://github.com/tmux-plugins/vim-tmux
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/syntastic'
Plugin 'hashivim/vim-terraform'
Plugin 'chriskempson/base16-vim'
Plugin 'NLKNguyen/papercolor-theme'

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
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Numbering
set number
set numberwidth=1

" Colorscheme settings
" set background=light
" colorscheme PaperColor

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
colorscheme base16-material-palenight

" NERDTree settings (scrooloose/nerdtree)
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-e> :NERDTreeToggle<CR>

" Terraform plugin options
let g:terraform_fmt_on_save=1

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
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Highlight search results
set hlsearch

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
map <C-t> :SyntasticToggleMode<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Navigation shortcuts
map <C-n> :bn<CR>
map <C-p> :bp<CR>
