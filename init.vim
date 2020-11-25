syntax on
set number
inoremap jj <Esc>
inoremap kk _
nnoremap <C-S> :w<Enter>
inoremap <C-S> <Esc>:w<Enter>
inoremap <C-\> <Esc>:w<Enter>:!racket % <Enter>
nnoremap <C-\> :w<Enter>:!racket % <Enter>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

set ignorecase
set smartcase

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'guns/vim-sexp'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'wlangstroth/vim-racket'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'


" Initialize plugin system
call plug#end()

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

