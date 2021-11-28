function OpenStartify()
    if !argc()
        Startify
    endif
    NvimTreeOpen
    wincmd w
endfunction
autocmd VimEnter * call OpenStartify()

