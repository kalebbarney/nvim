require("leetbuddy").setup({
    domain = "com",
    language = "ts"
})

vim.keymap.set("n", "<leader>lq", "<cmd>LBQuestions<cr>")
vim.keymap.set("n", "<leader>ll", "<cmd>LBQuestion<cr>")
vim.keymap.set("n", "<leader>lr", "<cmd>LBReset<cr>")
vim.keymap.set("n", "<leader>lt", "<cmd>LBTest<cr>")
vim.keymap.set("n", "<leader>ls", "<cmd>LBSubmit<cr>")
