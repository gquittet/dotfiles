nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({ follow=true, hidden=true })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_files()<cr>

" Live Grep
nnoremap <leader>sg <cmd>lua require('telescope.builtin').live_grep()<cr>
" Search word under cursor
nnoremap <leader>sw <cmd>lua require('telescope.builtin').grep_string()<cr>

" Commits
nnoremap <leader>lc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>lbc <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gst <cmd>lua require('telescope.builtin').git_stash()<cr>

" Outline
nnoremap <leader>lo <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>ls <cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>

nnoremap <leader>lj <cmd>lua require('telescope.builtin').jumplist()<cr>

nnoremap <leader>lL <cmd>lua require('telescope.builtin').loclist()<cr>

nnoremap <leader>lm <cmd>lua require('telescope.builtin').marks()<cr>

" Resume
nnoremap <leader>lr <cmd>lua require('telescope.builtin').resume()<cr>

nnoremap <leader>lq <cmd>lua require('telescope.builtin').quickfix()<cr>

" History
nnoremap <leader>lhc <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader>lhs <cmd>lua require('telescope.builtin').search_history()<cr>


" List buffers
nnoremap <leader>lbl <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>lB <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>sh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua << EOF
local actions = require('telescope.actions')

-- Don't preview binary (huge slow down when trying to preview)
local previewers = require('telescope.previewers')
local Job = require('plenary.job')
local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
    command = 'file',
    args = { '--mime-type', '-b', filepath },
    on_exit = function(j)
      local mime_type = vim.split(j:result()[1], '/')[1]
      if mime_type == "text" then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      else
        -- maybe we want to write something to the buffer here
        vim.schedule(function()
          vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { 'BINARY' })
        end)
      end
    end
  }):sync()
end

require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
      "--ignore-case",
      "--no-ignore-vcs",
      "--follow",
      "--glob",
      "!{.git}",
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
    buffer_previewer_maker = new_maker,
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<M-w>"] = actions.delete_buffer + actions.move_to_top,
        },
      },
    },
  },
}
EOF
