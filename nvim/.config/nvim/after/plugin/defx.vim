" Defx settings
" - toggle => toggle mode
" - -buffer-name=`'defx' . tabpagenr()` => different state per tabs
" - -resume -search=`expand('%:p')` `escape(expand('%:p:h'), ' :')` => auto focus current file
nnoremap <leader>te <cmd>Defx -toggle -buffer-name=`'defx' . tabpagenr()` -resume -search=`expand('%:p')` `escape(expand('%:p:h'), ' :')`<cr>

call defx#custom#option('_', {
            \ 'winwidth': 30,
            \ 'split': 'vertical',
            \ 'direction': 'topleft',
            \ 'show_ignored_files': 1,
            \ 'columns': 'git:indent:icon:space:icons:space:filename:type',
            \ })

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <cr>
                \ defx#do_action('open', 'choose')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> dd
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('open', 'choose')
    nnoremap <silent><buffer><expr> v
                \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('preview')
    nnoremap <silent><buffer><expr> o
                \ defx#do_action('open_tree', 'toggle')
    nnoremap <silent><buffer><expr> A
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> a
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
                \ defx#do_action('toggle_columns',
                \                'git:indent:icon:space:icons:space:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
                \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> df
                \ defx#do_action('remove_trash')
    nnoremap <silent><buffer><expr> dF
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
                \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> zh
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> g.
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
                \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> <C-a>
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> R
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
    " Mouse
    nnoremap <silent><buffer><expr> <2-LeftMouse>
                \ defx#do_action('open', 'tree')
    nnoremap <silent><buffer><expr> <3-LeftMouse>
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> <RightMouse>
                \ defx#do_action('cd', ['..'])
endfunction
