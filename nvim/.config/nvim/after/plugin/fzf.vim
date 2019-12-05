let $FZF_DEFAULT_OPTS = '--layout=reverse'

let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }

function! OpenFloatingWin()
    let height = &lines - 4
    let width = float2nr(&columns - (&columns * 2 / 20))
    let col = float2nr((&columns - width) / 2)

    let opts = {
                \ 'relative': 'editor',
                \ 'row': 2,
                \ 'col': col,
                \ 'width': width,
                \ 'height': height * 19 / 20
                \ }

    let buf = nvim_create_buf(v:false, v:true)
    let win = nvim_open_win(buf, v:true, opts)

    call setwinvar(win, '&winhl', 'Normal:Pmenu')

    setlocal
                \ buftype=nofile
                \ nobuflisted
                \ bufhidden=hide
                \ nonumber
                \ norelativenumber
                \ signcolumn=no
endfunction


" Ignore files that are in .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -l --nogroup  --nocolor --hidden -g ""'


" search project files
"nnoremap <leader>ff :FZF<CR>
"nnoremap <leader>fg :GFiles<CR>
"search project files by lines of code
nnoremap <leader>fl :Lines<CR>
"search all open files/buffers
"nnoremap <leader>fb :Buffers<CR>

" search in project
"nnoremap <leader>fp :Ag<CR>
"start a search query by pressing \
nnoremap \  :Ag<space>
"search for word under cursor by pressing |
nnoremap \| :Ag <C-R><C-W><CR>:cw<CR>
