syntax on "syntax higliting

" search
set incsearch  "incremental search
set hlsearch   "search hightlight
set ignorecase "search ignore case
set smartcase  "id has Uppercase, then donot ignore case


colorscheme desert

set cursorline
"set cursorcolumn
set showmatch "show matching bracketscketscketsckets
set showcmd   "show cmd in status line
set guifont=Source\ Code\ Pro\ 16

set nu "line number
"set ai "auto indent

set autowrite     "autowrite before :next and :make
set nobackup "no backup file
set nowritebackup

set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese

"keymap
nmap <C-S> :update<CR>
vmap <C-S> <C-C>:update<CR>
imap <C-S> <C-O>:update<CR>

inoremap jk <ESC>`^
vnoremap jk <ESC>
onoremap jk <ESC>

noremap <Space>y "*y
noremap <Space>yy "*Y
noremap <Space>p "*p
noremap <Space>P "*P

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
call plug#end()
