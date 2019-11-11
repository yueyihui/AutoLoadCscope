function! AddCsFile()
    call s:Python('AddCsFile()')
endfunction

function! s:Python(fn)
    if has('python3')
        let s:has_supported_python = 2
    else has('python')"
        let s:has_supported_python = 1
    endif

    exec "python".(s:has_supported_python == 2 ? '3' : '')." ". a:fn
endfunction

call AddCsFile()
