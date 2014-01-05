set nocompatible                        " be iMproved
filetype off                            " vundle required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'ctrlp.vim'
Bundle 'bufexplorer.zip'
Bundle 'mattn/emmet-vim.git'            
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'snipmate-snippets'
Bundle 'molokai'
Bundle 'Mustang2'
Bundle 'inkpot'
Bundle 'wombat256.vim'
Bundle 'ack.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'dart-lang/dart-vim-plugin'
Bundle 'motus/pig.vim'
Bundle 'w0ng/vim-hybrid' 
Bundle 'fugitive.vim'
Bundle 'rking/ag.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pythonhelper'
Bundle 'Syntastic'

filetype plugin indent on               " vundle required!

" Basics
syntax on                               " syntax highlighting
set backspace=indent,eol,start          " bs over autoindent, eol, and start of i-mode.  
set fileencodings=utf-8,latin1
set helplang=en
set ruler                               " show [line,col] in bottom of file
set history=100                         " num command, search pattern, etc histories to store
set viminfo='100,\"100,/100,:100        " store .viminfo file; remember last 
                                        "   * 100 files to save marks for
                                        "   * 100 lines per register
                                        "   * 100 items in search pattern history
                                        "   * 100 items in command-line history

set autoread                            " refresh unmodified files after external write

" Highlighting and stuff
set hlsearch                            " hl all matching search results in file
set incsearch                           " hl search results whilst typing 
set showmatch                           " show matching brackets
set cursorline                          " highlights line at cursor position
set colorcolumn=80                      " highlight 80th column

" Tabbing and spacing
set tabstop=4                           " tabs are four spaces wide
set shiftwidth=4                        " tabs are four spaces wide
set expandtab                           " expand tabs to spaces
set autoindent                          " maintain indent on newline
set smarttab                            " insert blanks for tabs???

" Numbering and scrolling
set number                              " show absolute line numbers
set scrolloff=5                         " 5 lines from top/bottom of window
set wildmenu                            " enhanced cmd line completion
set hidden                              " allow modified buffers to be hidden when abandoned

" colorschemes
set t_Co=256                            " allow 256 colors
"colorscheme mustang
"colorscheme inkpot
"colorscheme wombat256
"colorscheme molokai
colorscheme hybrid

set cryptmethod=blowfish                " use strong, blowfish encryption

"manual filetype recognition
"autocmd BufNewFile,BufRead *.vb set ft=vbnet
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

" handle Makefile <tab> char bitchiness
autocmd FileType make setlocal noexpandtab

inoremap <F5> <C-r>=system('uuidgen -r')[0:-2]<CR>
inoremap <F6> <C-R>=system('date')[0:-2]<CR> 

set runtimepath^=~/.vim/bundle/ctrlp.vim " for ctrlp
let NERDTreeIgnore = ['\.pyc$']          " for NERDTree (duh)
