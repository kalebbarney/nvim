require("browse").setup({
    provider = "brave",
    bookmarks = {
        ["github"] = {
            ["name"] = "search github from neovim",
            ["code_search"] = "https://github.com/search?q=%s&type=code",
            ["repo_search"] = "https://github.com/search?q=%s&type=repositories",
            ["issues_search"] = "https://github.com/search?q=%s&type=issues",
            ["pulls_search"] = "https://github.com/search?q=%s&type=pullrequests",
        },
    }
})

vim.keymap.set("n", "<leader>b", function()
    require("browse").browse({ bookmarks = bookmarks })
end)
