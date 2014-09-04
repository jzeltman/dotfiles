" Basic VI settings
set nocompatible
set t_Co=256
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=eol,start,indent
set autoindent
set nostartofline
set cmdheight=3
set number
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set noswapfile
set autoread
set ruler
nnoremap <CR> :nohlsearch<cr>   " clear the search buffer when hitting return

" Map <leader> to comma instead of \
let mapleader = ","

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

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
let g:NERDTreeWinSize=40

" Airline - https://github.com/bling/vim-airline
let g:airline_powerline_fonts = 1

" Unite - https://github.com/Shougo/unite.vim.git 
:map <C-U> :Unite file buffer<CR>

" neocomplcache - https://github.com/Shougo/neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Surround - https://github.com/tpope/vim-surround
" Tagbar - https://github.com/majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" AutoClose - https://github.com/spf13/vim-autoclose
