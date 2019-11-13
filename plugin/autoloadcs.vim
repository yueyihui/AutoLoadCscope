function! s:Python(fn)
    if has('python3')
        let l:has_supported_python = 3
    elseif has('python')"
        let l:has_supported_python = 1
    endif

    let l:plugin_path = globpath(&rtp, "plugin/autoloadcs.py")

    exec "py".(l:has_supported_python == 3 ? '3' : '')."file"." ". l:plugin_path

    exec "python".(l:has_supported_python == 3 ? '3' : '')." ". a:fn
endfunction

call s:Python('AddCsFile()')
