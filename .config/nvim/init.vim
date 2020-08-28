"        _
"       (_)
" __   ___ _ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

" Set map leader
let mapleader =","

" install vim-plug if it isn't already installed
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" tmux color support
if (has("termguicolors"))
  set termguicolors
endif

" Install the necesary plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'sainnhe/forest-night'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" general settings
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set clipboard+=unnamedplus

" Render tabs
set list!

" themeing
set background=dark
set termguicolors
let g:forest_night_enable_italic=1
let g:forest_night_disable_italic_comment = 1
colorscheme forest-night
"let g:airline_theme='forest-night'
let g:airline_powerline_fonts = 1


" Nerd tree
map <leader>n :NERDTreeToggle<CR>

" Enable autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
