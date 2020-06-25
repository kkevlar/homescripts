set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'wellle/targets.vim'
Plugin 'vim-scripts/camelcasemotion'
" Plugin 'scrooloose/nerdcommenter'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number
colorscheme gruvbox
set background=dark   " Setting light mode
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'

" Nerd tree config
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" set colorcolumn=72
autocmd vimenter * wincmd p
set cursorline
set backspace=indent,eol,start
set tabstop=2     " (ts) width (in spaces) that a <tab> is displayed as
set expandtab     " (et) expand tabs to spaces (use :retab to redo entire file)
set shiftwidth=2  " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
set hlsearch

imap jj <Esc>
"nnoremap <c-j> mm<Esc>O// clang-format on<Esc>ggO// clang-format off<Esc>`m
"imap /cfo // clang-format on
"imap /cff // clang-format off
"nmap <c-s> :w<CR>
"imap <c-s> <Esc>:w<CR>

"nnoremap <Leader>s :.,$s/\<<C-r><C-w>\>//gc<Left><Left><Left>
"vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
"inoremap <> <><Left>
"inoremap () ()<Left>
inoremap {} {}<Left><CR><CR><Up>
inoremap :w<CR> <Esc>:w<CR>
"inoremap [] []<Left>
"inoremap "" ""<Left>
"inoremap '' ''<Left>
""inoremap `` ``<Left>
nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>
map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>
noremap H     ^
noremap L     $
nnoremap Y y$
"nnoremap <C-j> mm<Esc>O// clang-format on<Esc>ggO// clang-format off<Esc>`m
"nnoremap <c-f> :e %:h/
"nnoremap <c-g> :vertical sb <CR>
"nnoremap <c-j> :browse oldfiles <CR>
"nnoremap <c-k> :w <CR> :! clang-format -i % <CR>
"nnoremap <c-l> :source err.vim <CR>
"nnoremap <S-Left> :vertical resize -2 <CR>
"nnoremap <S-Right> :vertical resize +2 <CR>
"nnoremap <S-Up> :resize +2 <CR>
"nnoremap <S-Down> :resize -2 <CR>




