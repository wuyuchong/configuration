function! myspacevim#after() abort
    set nospell
    set nonumber
    set norelativenumber

    highlight Normal guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
endfunction
