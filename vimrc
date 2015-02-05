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
set shiftwidth=4
set softtabstop=4
set expandtab
set laststatus=2
set noswapfile
set autoread
set ruler
set  foldmethod=indent
set foldlevelstart=20
" clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>   
set clipboard=unnamed

" make working with other people's code easier
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Map <leader> to comma instead of \
let mapleader = ","

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Map kj to Escape
:imap kj <Esc>

" Plugins setup
" Pathogen - https://github.com/tpope/vim-pathogen
execute pathogen#infect()
filetype plugin indent on

" Solarized - https://github.com/altercation/vim-colors-solarized 
syntax enable 
" "set background=light
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" NerdTree - https://github.com/scrooloose/nerdtree
:map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1

" Airline - https://github.com/bling/vim-airline
let g:airline_powerline_fonts = 1

" Unite - https://github.com/Shougo/unite.vim.git 
:map <C-U> :Unite file buffer<CR>

" neocomplcache - https://github.com/Shougo/neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,handlebars,mustache,hbt setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Surround - https://github.com/tpope/vim-surround
" Tagbar - https://github.com/majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>


" Mustache & Handlebars Syntax Highlighting
" https://github.com/mustache/vim-mustache-handlebars
let g:mustache_abbreviations = 1
let g:mustache_operators = 1
au BufRead,BufNewFile *.hbt set filetype=mustache

" http://myusuf3.github.io/numbers.vim/
nnoremap <F3> :NumbersToggle<CR>
