fun! s:DetectLogstash()
    if getline(1) =~ '^\s*(input|filter|output) {'
        set ft=logstash
    endif
endfun

autocmd BufNewFile,BufRead *.conf call s:DetectLogstash()
