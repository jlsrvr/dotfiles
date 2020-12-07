set nocompatible                         " Use Vim settings, rather than Vi settings
set encoding=utf-8                       " Supports unicode
set noerrorbells
set nowrap                               " Don't wrap lines
set scrolloff=3                          " Number of screen lines to keep under the cursor
set sidescrolloff=5                      " Number of screen lines to keep on the left/right of cursor

syntax on                                " Enable syntax highlighting
syntax enable

set confirm                              " Display confirmation dialog when closing unsaved files

set number                               " Enable line numbers
set relativenumber											 " Enable relative line numbers
set cursorline                           " Highlight cursor line
set title                                " Set the window's title, with filename being edited

set visualbell
set tabstop=4                            " effectively how many columns of whitespace a \t is worth
set shiftwidth=0                         " how many columns of whitespace a “level of indentation” is worth.
set softtabstop=0                        " is how many columns of whitespace a tab keypress or a backspace keypress is worth.
set backspace=indent,eol,start           " Allow backspacing over indentation, line breaks, insertion, utf

" set expandtab                            " means that you never wanna see a \t again in your file

set directory=$HOME/.vim/tmp//           " Set directory for swap file
set nobackup                             " Disable backup files
set nowb                                 "
set history=1000                         " Set bigger history of executed command
set laststatus=2                         " Always show status line

let g:netrw_liststyle = 3                " Use third mode of Netrw (display dir nesting)
let g:netrw_winsize = 20                 " 20 % width for netrw pane
let g:netrw_banner = 0                   " remove Netrw banner





filetype plugin indent on                " Smart auto indenting for files
set autoindent                           " New lines inherit indentation of previous line
set autoread                             " Automatically re-read files if unmodified inside vim
match ErrorMsg '\s\+$'                   " Highlight trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e       " Remove trailing whitespaces automatically



set showcmd                              " Show incomplete commands at the bottom

set wildmenu                             " Display command line's tab complete options as a menu.

set incsearch                            " Find the next match as we type
set hlsearch                             " Highlight searches by default
set ignorecase                           " Ignore case when searching...
set smartcase                            " ... unless you type a capital


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'sickill/vim-monokai', { 'as': 'monokai' }                       " Monokai theme

Plug 'vim-ruby/vim-ruby'                                              " Omni and syntax for ruby

Plug 'itchyny/lightline.vim'                                          " Configurable statusline
Plug 'christoomey/vim-tmux-navigator'                                 " Navigate seamlessly between vim and tmux

Plug 'jremmen/vim-ripgrep'                                            " Enhance vimgrep
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }     " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'

" Plug 'edkolev/tmuxline.vim'                                           " Using same colourfor vim & tmux

call plug#end()

colorscheme monokai
set noshowmode
