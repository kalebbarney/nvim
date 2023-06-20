function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    require("gruvbox").setup({
        overrides = {
            SignColumn = { bg = "#ff9900" }
        }
    })
end

ColorMyPencils()
