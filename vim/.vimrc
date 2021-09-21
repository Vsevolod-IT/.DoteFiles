"plugins section
"============================== 
call plug#begin('~/.vim/plugged')
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"General AutoCompile
Plug 'valloric/youcompleteme'

"JS syntax
Plug 'pangloss/vim-javascript'

"JS auto comple
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

"Close bracets (pairs)
Plug 'raimondi/delimitmate'

"find into dirs projects
Plug 'kien/ctrlp.vim'


"tab line (info line bottom)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" js syntax for lib
Plug 'othree/javascript-libraries-syntax.vim'

"jsx for react
Plug 'mxw/vim-jsx'


"color scheme 
Plug 'morhetz/gruvbox'


"FZF plugins fo serch
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Initialize plugin system
call plug#end()
"==============================


"Mapping keys
"==============================
map <C-n> :NERDTreeToggle<CR>



"====================
let g:used_javascript_libs = 'react'



"==============================


"theme airline (bottom bar)
let g:airline_theme= "simple"
let g:airline_powerline_fonts = 1
set t_Co=256

"Auto compile
filetype plugin on
set omnifunc=syntaxcomplete#Complete


" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set spell	" Enable spell-checking
set visualbell	" Use visual bell (no beeping)


syntax on
colorscheme gruvbox
set background=dark


set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
 
" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 
" manager plugins
"==============================
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
