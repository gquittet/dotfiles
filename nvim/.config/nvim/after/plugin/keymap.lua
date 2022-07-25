local wk = require("which-key")

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Disable help
vim.keymap.set("", "<F1>", "<Nop>", {})
vim.keymap.set("", "<M-F1>", "<Nop>", {})

-- Improve insert mode
vim.keymap.set("i", "<C-a>", "<C-o>0", {})
vim.keymap.set("i", "<C-e>", "<C-o>$", {})

-- Undo breakpoints (to avoid to delete all changes)
vim.keymap.set("i", ",", ",<C-g>u", { noremap = true })
vim.keymap.set("i", ".", ".<C-g>u", { noremap = true })
vim.keymap.set("i", "::", "::<C-g>u", { noremap = true })
vim.keymap.set("i", "(", "(<C-g>u", { noremap = true })
vim.keymap.set("i", "?", "?<C-g>u", { noremap = true })
vim.keymap.set("i", "!", "!<C-g>u", { noremap = true })

-- Cursor in the middle of the screen
vim.keymap.set("n", "#", "#zz", { noremap = true })
vim.keymap.set("n", "*", "*zz", { noremap = true })
vim.keymap.set("n", "n", "nzz", { noremap = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true })
vim.keymap.set("n", "J", "Jzz", { noremap = true })
vim.api.nvim_create_autocmd("CursorMoved", {
    group = vim.api.nvim_create_augroup("KeepCentered", {}),
    callback = function()
        vim.cmd([[normal! zz]])
    end,
})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = vim.highlight.on_yank,
})

-- Hop shortcut (EasyMotion)
vim.keymap.set("n", "<C-;>", "<cmd>HopPattern<cr>", { noremap = true })
vim.keymap.set("v", "<C-;>", "<cmd>HopPattern<cr>", { noremap = true })

local buffer_mappings = {
    name = "Buffer",
    D = { "<cmd>bd!<cr>", "Delete (Force)" },
    d = { "<cmd>bd<cr>", "Delete" },
    j = { "<cmd>BufferLinePick<cr>", "Jump" },
    f = { "<cmd>bf<cr>", "First" },
    L = { "<cmd>bl<cr>", "Last" },
    l = { "<cmd>bn<cr>", "Next" },
    h = { "<cmd>bp<cr>", "Previous" },
    p = { "<cmd>BufferLineTogglePin<cr>", "Pin" },
}
wk.register(buffer_mappings, { prefix = "<leader>b" })

local window_mappings = {
    name = "Window",
    --+ = { "<C-w>+", "increase-height" },
    --- = { "<C-w>-", "decrease-height" },
    --< = { "<C-w><", "increase-width" },
    --= = { "<C-w>=", "equalize-size" },
    --> = { "<C-w>>", "decrease-width" },
    H = { "<C-w>H", "move-left" },
    J = { "<C-w>J", "move-down" },
    K = { "<C-w>K", "move-up" },
    L = { "<C-w>L", "move-right" },
    Q = { "<C-w>Q", "force-quit" },
    T = { "<C-w>T", "move-new-tab" },
    _ = { "<C-w>_", "zoom-vertical" },
    b = { "<C-w>b", "bottom" },
    c = { "<C-w>c", "close" },
    f = { "<C-w>f", "open-cursor-path" },
    h = { "<C-w>h", "left" },
    i = { "<C-w>i", "open-current-file" },
    j = { "<C-w>j", "down" },
    k = { "<C-w>k", "up" },
    l = { "<C-w>l", "right" },
    n = { "<C-w>n", "new-file" },
    o = { "<C-w>o", "only" },
    q = { "<C-w>q", "quit" },
    r = { "<C-w>r", "rotate-right" },
    s = { "<C-w>s", "split-horizontal" },
    t = { "<C-w>t", "select-top" },
    v = { "<C-w>v", "split-vertical" },
    w = { "w", "Next word" },
    x = { "<C-w>x", "rotate-left" },
    z = { "<C-w>z", "zoom" },
    --"|" = { "<C-w>|", "zoom-horizontal" },
}
wk.register(window_mappings, { prefix = "<leader>w" })

local toggle_mappings = {
    name = "Toggle",
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
}
wk.register(toggle_mappings, { prefix = "t" })

--local g_mappings = {
--       name = "Goto",
--       --% = "matchit-bracket-backward",
--       T = "tab-previous",
--       c = "comment",
--       d = "definition",
--       f = "path",
--       g = "top",
--       i = "implementation",
--       r = "references",
--       t = "tab-next",
--       x = "which_key_ignore",
--       y = "type-definition",
--}
--wk.register(g_mappings, { prefix = 'g' })

local file_mappings = {
    name = "File",
    f = { "<cmd>Telescope find_files hidden=true<CR>", "Find file", noremap = false },
    g = { "<cmd>Telescope git_files<CR>", "Find file", noremap = false },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent File", noremap = false },
    s = { "<cmd>write<CR>", "Save File" },
    S = { "<cmd>write!<CR>", "Force save File" },
}
wk.register(file_mappings, { prefix = "<leader>f" })

local jump_mappings = {
    name = "Jump",
    a = { "<cmd>HopAnywhere<CR>", "Jump anywhere" },
    l = { "<cmd>HopLine<CR>", "Jump line" },
    w = { "<cmd>HopWord<CR>", "Jump word" },
}
wk.register(jump_mappings, { prefix = "<leader>j" })

local git_mappings = {
    name = "Git",
    b = { "<cmd>Telescope git_branches<CR>", "Branches" },
    c = { "<cmd>Telescope git_commits<CR>", "Commits" },
    C = { "<cmd>Telescope git_bcommits<CR>", "Buffer commits" },
    s = { "<cmd>Neogit<CR>", "Status" },
    S = { "<cmd>Telescope git_stash<CR>", "Stashes" },
    h = {
        name = "Hunk",
        p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview hunk" },
        j = { "<cmd>Gitsigns next_hunk<CR>", "Next hunk" },
        k = { "<cmd>Gitsigns prev_hunk<CR>", "Previous hunk" },
    }
}
wk.register(git_mappings, { prefix = "<leader>g" })

local lsp_mappings = {
    name = "List",
    w = {
        name = "Workspace",
        d = { "<cmd>Telescope diagnostics<CR>", "Diagnostics" },
        o = { "<cmd>Telescope lsp_workspace_symbols<CR>", "Outline" },
    },
    d = { "<cmd>Telescope diagnostics bufnr=0<CR>", "Diagnostics" },
    i = { "<cmd>Telescope lsp_implementations<CR>", "Implementations" },
    k = { "<cmd>Telescope diagnostics<CR>", "Diagnostics" },
    r = { "<cmd>Telescope resume<CR>", "Resume" },
    o = { "<cmd>Telescope lsp_document_symbols<CR>", "Outline" },
    s = { "<cmd>Telescope lsp_type_definitions<CR>", "Type definitions" },
}
wk.register(lsp_mappings, { prefix = "<leader>l" })

local search_mappings = {
    name = "Search",
    g = { "<cmd>Telescope grep_string<CR>", "Search word under cursor" },
    ["/"] = { "<cmd>Telescope live_grep<CR>", "Search word" },
    l = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Search line" },
}
wk.register(search_mappings, { prefix = "<leader>s" })
