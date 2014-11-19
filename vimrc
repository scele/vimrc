set nocompatible

let mapleader=","
let maplocalleader=";"

call pathogen#infect()

syntax on
filetype plugin indent on

" highlight end of line whitespace, etc
"set listchars=nbsp:_,tab:>\ ,extends:»,precedes:«,trail:·  " ,eol:¶
"set listchars=nbsp:_,tab:>\ ,extends:»,precedes:«,trail:·  " ,eol:¶
set listchars=nbsp:_,tab:>\ 
set list
"hi SpecialKey guifg=yellowgreen ctermfg=darkgreen " nbsp, tab, trail
"hi NonText guifg=yellowgreen ctermfg=darkgreen " eol, extends, precedes

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

"set textwidth=79
set textwidth=0
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

set makeprg=amake.sh\ mm

""html
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
"
"kernel
function KernelStyle()
  set tabstop=8
  set softtabstop=8
  set shiftwidth=8
  set noexpandtab
endfunction
function NvStyle()
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set expandtab
endfunction
function HtmlStyle()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
endfunction
function TxtStyle()
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set expandtab
  set formatoptions=tna
  set textwidth=80
  set nopaste
  set formatlistpat=^\\s*(*[0-9*]\\+[\\]:.)}\\t\ ]\\s*
endfunction


au BufRead,BufNewFile */kernel/* call KernelStyle()
au BufRead,BufNewFile */nouveau/* call KernelStyle()
au BufRead,BufNewFile *.html call HtmlStyle()
au BufRead,BufNewFile *.txt call TxtStyle()
set paste
set ruler
