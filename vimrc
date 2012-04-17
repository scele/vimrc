set nocompatible

let mapleader=","
let maplocalleader=";"

call pathogen#infect()

syntax on
filetype plugin indent on

" highlight end of line whitespace, etc
set listchars=nbsp:_,tab:>\ ,extends:»,precedes:«,trail:·  " ,eol:¶
set list
hi SpecialKey guifg=yellowgreen ctermfg=darkgreen " nbsp, tab, trail
hi NonText guifg=yellowgreen ctermfg=darkgreen " eol, extends, precedes

" make, quickfix and location list
noremap <silent> <F9> :make<cr><cr>:botright cwindow<cr>

noremap <silent> <F2> :cprev<cr>
noremap <silent> <F3> :cc!<cr>
noremap <silent> <F4> :cnext<cr>

noremap <silent> <S-F2> :lprev<cr>
noremap <silent> <S-F3> :ll!<cr>
noremap <silent> <S-F4> :lnext<cr>


" Ctrl X Ctrl O = OmniComplete -> Ctrl Space
" https://github.com/tpope/vim-surround
" https://github.com/tpope/vim-repeat

set textwidth=79
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

au BufNewFile,BufRead *.less set filetype=less
