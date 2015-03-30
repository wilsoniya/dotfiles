set nocompatible                        " be iMproved
filetype off                            " vundle required

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

Plugin 'ctrlp.vim'
Plugin 'bufexplorer.zip'
Plugin 'mattn/emmet-vim.git'            
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ack.vim'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'fugitive.vim'
Plugin 'rking/ag.vim'
Plugin 'pythonhelper'
Plugin 'Syntastic'
Plugin 'Gundo'
Plugin 'tpope/vim-dispatch'

Plugin 'motus/pig.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'vim-coffee-script'
Plugin 'mitsuhiko/vim-jinja'

Plugin 'molokai'
Plugin 'Mustang2'
Plugin 'inkpot'
Plugin 'wombat256.vim'
Plugin 'w0ng/vim-hybrid' 
Plugin 'sickill/vim-monokai' 

filetype plugin indent on                   " vundle required!
call vundle#end()                           " required

" Basics
syntax on                                   " syntax highlighting
set synmaxcol=200                           " maximum line length for syntax highlighting
set ttyfast                                 " fast terminal connection
set ttyscroll=3                             " maximum number of lines to scroll before forcing a redraw
set lazyredraw                              " the screen will not be redrawn while executing macros, registers and other commands that have not been typed.
set backspace=indent,eol,start              " bs over autoindent, eol, and start of i-mode.  
set fileencodings=utf-8,latin1
set helplang=en
set ruler                                   " show [line,col] in bottom of file
set history=100                             " num command, search pattern, etc histories to store
set viminfo='100,\"100,/100,:100            " store .viminfo file; remember last 
                                            "   * 100 files to save marks for
                                            "   * 100 lines per register
                                            "   * 100 items in search pattern history
                                            "   * 100 items in command-line history

set autoread                                " refresh unmodified files after external write

" Highlighting and stuff
set hlsearch                                " hl all matching search results in file
set incsearch                               " hl search results whilst typing 
set showmatch                               " show matching brackets
set cursorline                              " highlights line at cursor position
set colorcolumn=80                          " highlight 80th column

" Tabbing and spacing
set tabstop=4                               " tabs are four spaces wide
set shiftwidth=4                            " tabs are four spaces wide
set expandtab                               " expand tabs to spaces
set autoindent                              " maintain indent on newline
set smarttab                                " insert blanks for tabs???

" Numbering and scrolling
set number                                  " show absolute line numbers
set scrolloff=5                             " 5 lines from top/bottom of window
set wildmenu                                " enhanced cmd line completion
set hidden                                  " allow modified buffers to be hidden when abandoned
set wildignore+=*/vendor/*,*.swp,*.pyx      " stuff to ignore during cmd line completion

" colorschemes
set t_Co=256                                " allow 256 colors
"colorscheme mustang
"colorscheme inkpot
"colorscheme wombat256
"colorscheme molokai
"colorscheme hybrid
colorscheme monokai

set cryptmethod=blowfish                    " use strong, blowfish encryption

"manual filetype recognition
"autocmd BufNewFile,BufRead *.vb set ft=vbnet
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

"set undofile

" handle Makefile <tab> char bitchiness
autocmd FileType make setlocal noexpandtab

inoremap <F5> <C-r>=system('uuidgen -r')[0:-2]<CR>
inoremap <F6> <C-R>=system('date')[0:-2]<CR> 
nnoremap <leader>ig :GundoToggle<CR>     
nnoremap <leader>n :NERDTreeToggle<CR>

autocmd BufWritePre *.py :%s/\s\+$//e

if &diff
    " diff mode
    set diffopt+=iwhite
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim " for ctrlp
let NERDTreeIgnore = ['\.pyc$']          " for NERDTree (duh)
let g:syntastic_python_checkers = ['pylint']
