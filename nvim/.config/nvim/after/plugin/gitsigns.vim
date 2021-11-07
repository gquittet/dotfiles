" " navigate conflicts of current buffer
" nmap [C <Plug>(coc-git-prevconflict)
" nmap ]C <Plug>(coc-git-nextconflict)

" navigate chunks of current buffer
nmap <leader>ghp <cmd>Gitsigns prev_hunk<cr>
nmap <leader>ghn <cmd>Gitsigns next_hunk<cr>

" show chunk diff at current position
nmap <leader>ghi <cmd>Gitsigns preview_hunk<cr>
nmap <leader>ghu <cmd>Gitsigns reset_hunk<cr>

" " show commit contains current position
" nmap <leader>ghK <Plug>(coc-git-commit)
" nmap <silent> <leader>guo :CocCommand git.browserOpen<CR>
" nmap <silent> <leader>guy :CocCommand git.copyUrl<CR>

" Stage / Unstage hunk
nmap <leader>ghS <cmd>Gitsigns stage_hunk<cr>
nmap <leader>ghU <cmd>Gitsigns undo_stage_hunk<cr>


" " create text object for git chunks
" omap ig <Plug>(coc-git-chunk-inner)
" xmap ig <Plug>(coc-git-chunk-inner)
" omap ag <Plug>(coc-git-chunk-outer)
" xmap ag <Plug>(coc-git-chunk-outer)

" Toggle Git gutters
nmap <leader>Tgg <cmd>Gitsigns toggle_signs<cr>

lua << EOF
require('gitsigns').setup()
EOF
