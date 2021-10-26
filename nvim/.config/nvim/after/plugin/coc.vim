" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Fix Coc error highlighting doesn't refresh and needs :edit
au FocusGained,BufEnter,CursorHold * nested checktime %

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>ra <Plug>(coc-codeaction-selected)
nmap <leader>ra <Plug>(coc-codeaction-selected)
vmap <leader>ra <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ra <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>rf <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Imports
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call     CocAction('runCommand', 'editor.action.organizeImport')
" Sort imports on save
autocmd BufWritePre * :silent call CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Disable hidding cursor when pressing <C-c>
let g:coc_disable_transparent_cursor=1
" Show all diagnostics
nnoremap <silent> <leader>ld <cmd>CocList diagnostics<cr>
nnoremap <silent> <leader>lbd <cmd>CocList diagnostics --current-buf<cr>
" Manage extensions
nnoremap <silent> <leader>le <cmd>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cc <cmd>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>lo <cmd>CocList outline<cr>
" Search leader symbols
nnoremap <silent> <leader>ls <cmd>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cn <cmd>CocNext<cr>
" Do default action for previous item.
nnoremap <silent> <leader>cp <cmd>CocPrev<cr>
" Resume latest coc list
nnoremap <silent> <leader>cr <cmd>CocListResume<cr>

nnoremap <silent> <leader>ff <cmd>CocList files<cr>
nnoremap <silent> <leader>fg <cmd>CocList gfiles<cr>
nnoremap <silent> <leader>ll <cmd>CocList lines<cr>
nnoremap <silent> <leader>sg <cmd>CocList grep<cr>
nnoremap <silent> <leader>lL <cmd>CocList locationlist<cr>
nnoremap <silent> <leader>lr <cmd>CocList mru<cr>
nnoremap <silent> <leader>li <cmd>CocList issues<cr>
nnoremap <silent> <leader>lbl <cmd>CocList buffers<cr>
nnoremap <silent> <leader>lB <cmd>CocList buffers<cr>
nnoremap <silent> <leader>Sc <cmd>CocList colors<cr>
nmap <silent> <leader>gb <cmd>CocList branches --all<cr>
nnoremap <silent> <leader>lc <cmd>CocList commits<cr>
nnoremap <silent> <leader>lbc <cmd>CocList bcommits<cr>
nnoremap <silent> <leader>lft <cmd>CocList filetypes<cr>
nnoremap <silent> <leader>lsp <cmd>CocList snippets<cr>
nnoremap <silent> <leader>lq <cmd>CocList quickfix<cr>
nnoremap <silent> <leader>lbw <cmd>CocList words<cr>
nnoremap <silent> <leader>sw :exe 'CocList --input='.expand('<cword>').' words'<CR>
nnoremap <silent> <leader>ly <cmd>CocList yank<cr>

" Git
" navigate conflicts of current buffer
nmap [C <Plug>(coc-git-prevconflict)
nmap ]C <Plug>(coc-git-nextconflict)
" navigate chunks of current buffer
nmap <leader>ghp <Plug>(coc-git-prevchunk)
nmap <leader>ghn <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap <leader>ghi <Plug>(coc-git-chunkinfo)
nmap <silent> <leader>ghu <cmd>CocCommand git.chunkUndo<cr>
" show commit contains current position
nmap <leader>ghK <Plug>(coc-git-commit)
nmap <silent> <leader>guo :CocCommand git.browserOpen<CR>
nmap <silent> <leader>guy :CocCommand git.copyUrl<CR>
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <localleader>f <Plug>(coc-format-selected)
vmap <localleader>f <Plug>(coc-format-selected)
xmap <localleader>f <Plug>(coc-format-selected)

nmap <silent> <localleader>sn <Plug>(coc-range-select)
xmap <silent> <localleader>sn <Plug>(coc-range-select)
nmap <silent> <localleader>sp <Plug>(coc-range-select-backward)
xmap <silent> <localleader>sp <Plug>(coc-range-select-backward)

" Snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Coc Explorer
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
nmap <silent> <leader>tgg <cmd>CocCommand git.toggleGutters<cr>
