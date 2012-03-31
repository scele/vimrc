let g:haddock_browser="xdg-open"
let g:no_haskell_conceal=1
compiler ghc

function! s:GHCiOp(type)
    let saved_register = @@
    if a:type ==# 'v' || a:type ==# 'V' || a:type ==# '^V'
        silent normal! `<v`>y
    elseif a:type ==# 'char' || a:type ==# 'line'
        silent normal! `[v`]y
    else
        return
    endif

    execute ":GHCi " . @@
    let @@ = saved_register
endfunction

noremap <buffer> <silent> <F10> :GHCi main<cr>
nnoremap <buffer> <silent> <F11> :GHCi <C-r>=getline(".")<cr><cr>
vnoremap <buffer> <silent> <F11> :<C-U>call <SID>GHCiOp(visualmode())<cr>
nnoremap <silent> <buffer> <leader>e :set operatorfunc=<SID>GHCiOp<cr>g@
vnoremap <silent> <buffer> <leader>e :<C-U>call <SID>GHCiOp(visualmode())<cr>

