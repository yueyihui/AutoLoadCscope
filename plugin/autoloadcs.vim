function! s:Python(fn)
    if has('python3')
        let s:has_supported_python = 3
    "else has('python')"
        "let s:has_supported_python = 1
    endif
    "let s:plugin_path = escape(expand('<sfile>:p:h'), '\')

    py3file /home/lyue/.vim/bundle/autoloadcscope/plugin/autoloadcs.py
    "exec 'py3file ' . escape(s:plugin_path, ' ') . '/autoloadcs.py'
    exec "python".(s:has_supported_python == 3 ? '3' : '')." ". a:fn
endfunction

call s:Python('AddCsFile()')

