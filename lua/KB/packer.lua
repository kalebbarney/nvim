vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use({
        "ellisonleao/gruvbox.nvim",
        as = "gruvbox",
        config = function()
            vim.cmd([[colorscheme gruvbox]])

            require("gruvbox").setup()
        end
    })

    use { "bennypowers/nvim-regexplainer",
        config = function() require "regexplainer".setup() end,
        requires = {
            "nvim-treesitter/nvim-treesitter",
            "MunifTanjim/nui.nvim",
        } }

    use { "alvarosevilla95/luatab.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    use({
        "lalitmee/browse.nvim",
        requires = { "nvim-telescope/telescope.nvim" },
    })

    --    use {
    --        "zbirenbaum/copilot.lua",
    --        cmd = "Copilot",
    --        event = "InsertEnter",
    --        config = function()
    --            require("copilot").setup({})
    --        end,
    --    }
    use({
        "folke/trouble.nvim",
        requires = {
            "nvim-tree/nvim_web_devicons"
        },
    })

    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim_web_devicons",
        },
    })

    use({
        "Dhanus3133/LeetBuddy.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
    })

    use("folke/zen-mode.nvim")
    use("nvim-tree/nvim_web_devicons")
    use("eandrju/cellular-automaton.nvim")
    use("wbthomason/packer.nvim")
    use("karb94/neoscroll.nvim")
    use("windwp/windline.nvim")
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-context")
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("ianding1/leetcode.vim")

    use {
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            { "neovim/nvim-lspconfig" },
            {
                "williamboman/mason.nvim",
                run = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            { "williamboman/mason-lspconfig.nvim" },

            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            { "L3MON4D3/LuaSnip" },
        }
    }
end)
