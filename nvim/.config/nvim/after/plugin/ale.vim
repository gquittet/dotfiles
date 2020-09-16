nmap <silent> [g <Plug>(ale_previous_wrap)
nmap <silent> ]g <Plug>(ale_next_wrap)
nmap <silent> <space>af <Plug>(ale_fix)

nmap <silent> gd <Plug>(ale_go_to_definition)
nmap <silent> K <Plug>(ale_hover)
nmap <silent> gs <Plug>(ale_go_to_definition_in_split)
nmap <silent> gv <Plug>(ale_go_to_definition_in_vsplit)
nmap <silent> gr <Plug>(ale_find_references)
nmap <silent> gr <Plug>(ale_find_references)
nmap <silent> <space>af <Plug>(ale_fix)
nmap <silent> <space>as :ALEFixSuggest<CR>
nmap <silent> <space>ai <Plug>(ale_import)
nmap <silent> <space>aoi :ALEOrganizeImports<CR>
nmap <silent> <space>ar :ALERename<CR>
nmap <silent> <space>al :ALELint<CR>
nmap <silent> <space>als :ALELintStop<CR>
nmap <silent> <space>aad :ALEDisable<CR>
nmap <silent> <space>aae :ALEEnable<CR>
nmap <silent> <space>aat :ALEToggle<CR>

" " Lint on save only
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" " You can disable this option too
" " if you don't want linters to run on opening a file

