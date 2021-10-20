nnoremap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>di <Plug>VimspectorBalloonEval
xmap <leader>di <Plug>VimspectorBalloonEval
nnoremap <leader>dwc :call win_gotoid(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dwt :call win_gotoid(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dwv :call win_gotoid(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dww :call win_gotoid(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>dws :call win_gotoid(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>dwo :call win_gotoid(g:vimspector_session_windows.output)<CR>
nnoremap <leader>dq :call vimspector#Reset()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>dx <Plug>VimspectorRestart
nnoremap <leader>dc :call vimspector#Continue()<CR>

nmap <leader>dr <Plug>VimspectorRunToCursor

" Breakpoints
nmap <leader>dbt <Plug>VimspectorToggleBreakpoint
nmap <leader>dbc <Plug>VimspectorToggleConditionalBreakpoint
