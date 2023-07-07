vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<C-c>", [["+y]]) vim.keymap.set("n", "<C-C>", [["+Y]]) vim.keymap.set("n", "<C-v>", [["+p]])
vim.keymap.set("n", "<C-V>", [["+P]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>cod", "<cmd>TSContextDisable<cr>")
vim.keymap.set("n", "<leader>coe", "<cmd>TSContextEnable<cr>")
vim.keymap.set("n", "<leader>con", "<cmd>TSContextToggle<cr>")
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<cr>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<cr>")
vim.keymap.set("n", "<leader>ts", "<cmd>TSPlaygroundToggle<CR>")

vim.keymap.set("n", "<C-K>", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<C-J>", "<cmd>cprev<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<cr>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })
vim.keymap.set("n", "<leader>zzz", "<cmd>ZenMode<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")

vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<cr>")
vim.keymap.set("n", "<C-=>", "<cmd>resize 50<cr>")
vim.keymap.set("n", "<C--", "<cmd>resize 1<cr>")

vim.keymap.set("n", "<leader>tm", "<cmd>ToggleTerm<CR>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
