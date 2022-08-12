" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
" Plug 'scrooloose/syntastic'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
" Plug 'garbas/vim-snipmate'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'honza/vim-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'kien/ctrlp.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'valloric/youcompleteme'

" Initialize plugin system
call plug#end()

filetype plugin on
set background=dark
colorscheme solarized

set ignorecase
set tabstop=1
set expandtab
set shiftwidth=2

silent !stty -ixon
noremap  <silent> <C-S>    :wa<CR>
vnoremap <silent> <C-S>    <C-C>:wa<CR>
inoremap <silent> <C-S>    <C-O>:wa<CR><ESC>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
" normal backspace behaviour
set backspace=indent,eol,start

:let mapleader=","
nmap s <Plug>(easymotion-s)
set colorcolumn=72

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
:set nowrap
map <F6> :mksession! ~/vim_session <cr> " Quick write session
map <F7> :source ~/vim_session <cr>     " And load session
:set number relativenumber
set wildignore+=*/vendor/*
set hlsearch

set splitbelow
set splitright
set nobackup
set noswapfile
set laststatus=2
" Strip whitespace on save
" autocmd BufWritePre * :%s/\s\+$//e
nmap <silent>sf        :%!sqlformat % --reindent<CR>

nmap <Leader>f :NERDTreeToggle<CR>
