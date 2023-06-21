local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    vim.keymap.set('n', 'q', api.tree.close)
    vim.keymap.set('n', '<Enter>', api.node.open.tab, opts('Open: New tab'))
    vim.keymap.set('n', '<leader>c', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'd', api.fs.create, opts('Create'))
    vim.keymap.set('n', 'D', api.fs.remove, opts('Delete'))
    vim.keymap.set('n', 'R', api.fs.rename, opts('Rename'))
    vim.keymap.set('n', '<leader>pv', vim.cmd.q)
    vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Dotfiles'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
    on_attach = my_on_attach,
}
