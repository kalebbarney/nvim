vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local MyFugitive = vim.api.nvim_create_augroup("MyFugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = MyFugitive,
    pattern = "*",
    callback = function()
        print("help", vim.bo.ft)
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
        print("success", vim.bo.ft, bufnr, vim.inspect(opts))
        vim.keymap.set("n", "<leader>p", function()
            vim.cmd [[ Git push ]]
        end, opts)

        vim.keymap.set("n", "<leader>P", function()
            vim.cmd [[ Git pull --rebase ]]
        end, opts)

        vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
    end,
})
