" Basic VI settings
set nocompatible
set t_Co=256
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set cmdheight=3
set number
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set noswapfile

:imap kj <Esc>

" Plugins setup
" Pathogen - https://github.com/tpope/vim-pathogen
execute pathogen#infect()
filetype plugin indent on

" Solarized - https://github.com/altercation/vim-colors-solarized 
syntax enable 
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" NerdTree - https://github.com/scrooloose/nerdtree
:map <C-n> :NERDTreeToggle<CR>

" Airline - https://github.com/bling/vim-airline
let g:airline_powerline_fonts = 1

" Unite - https://github.com/Shougo/unite.vim.git 
:map <C-U> :Unite file buffer<CR>
