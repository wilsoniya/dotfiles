set nocompatible                        " be iMproved
filetype off                            " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'ctrlp.vim'
Bundle 'bufexplorer.zip'
Bundle 'ZenCoding.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'snipmate-snippets'
Bundle 'molokai'

filetype plugin indent on               " required!

"" Stuff i know what it does vvvv
syntax on                               "syntax highlighting
set backspace=indent,eol,start          "bs over autoindent, eol, and start of i-mode.  
set fileencodings=utf-8,latin1
set helplang=en
set history=100                         "num command, search pattern, etc histories to store

set hlsearch                            "hl all matching search results in file
set incsearch                           "hl search results whilst typing

set ruler                               "show [line,col] in bottom of file
set viminfo='20,\"50

set tabstop=4                           "tabs are four spaces wide
set shiftwidth=4                        "tabs are four spaces wide
set expandtab                           "expand tabs to spaces
set autoindent                          "maintain indent on newline
set smarttab                            "insert blanks for tabs???

set number                              "show absolute line numbers
set scrolloff=5                         "5 lines from top/bottom of window
set wildmenu                            "enhanced cmd line completion
set hidden                              "allow modified buffers to be hidden when abandoned
set t_Co=256                            "allow 256 colors

set cursorline                          "highlights line at cursor position
set colorcolumn=80                      "highlight 80th column
"colorscheme mustang
"colorscheme inkpot
"colorscheme wombat256
colorscheme molokai
"filetype plugin on 

set cryptmethod=blowfish                "use strong, blowfish encryption

"manual filetype recognition
"autocmd BufNewFile,BufRead *.vb set ft=vbnet
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

" handle Makefile <tab> char bitchiness
autocmd FileType make setlocal noexpandtab

inoremap <F5> <C-r>=system('uuidgen -r')[0:-2]<CR>
inoremap <F6> <C-R>=system('date')[0:-2]<CR> 

set runtimepath^=~/.vim/bundle/ctrlp.vim " for ctrlp
