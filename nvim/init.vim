" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/nvim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree' " file tree explorer
Plug 'nlknguyen/papercolor-theme' " colorscheme
Plug 'tpope/vim-commentary' " comment shortcut
Plug 'airblade/vim-gitgutter' " Git changes on sidebar
Plug 'yggdroot/indentline' " show indentation levels
Plug 'vim-airline/vim-airline' " status line
Plug 'vim-airline/vim-airline-themes' " themes for airline

" Language-specific plugins
Plug 'scrooloose/syntastic' " Shellcheck
Plug 'hashivim/vim-terraform' " Terraform

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Enable mouse integration
set mouse=a

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Settings for vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Numbering
set number
set numberwidth=1

" Colorscheme settings
set termguicolors
set background=light
colorscheme PaperColor

" NERDTree settings
let NERDTreeShowHidden=1
let g:plug_window = 'noautocmd vertical topleft new'
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-e> :NERDTreeToggle<CR>

" Set tab behavior to insert 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

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
