vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use {
        "goolord/alpha-nvim",
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local alpha = require 'alpha'
            local startify = require 'alpha.themes.startify'
            startify.section.header.val = {
                [[                                   __                ]],
                [[      ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[    /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            }
            startify.section.top_buttons.val = {
                startify.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            }
            startify.section.mru.val = { { type = "padding", val = 0 } }
            startify.nvim_web_devicons.enabled = false
            startify.section.bottom_buttons.val = {
                startify.button("q", "  Quit NVIM", ":qa<CR>"),
            }
            startify.section.footer.val = {
                { type = "text", val = "footer" },
            }
            startify.mru_opts.ignore = function(path, ext)
                return
                    (string.find(path, "COMMIT_EDITMSG"))
                    or (vim.tbl_contains(default_mru_ignore, ext))
            end
            alpha.setup(startify.config)
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'ellisonleao/gruvbox.nvim',
        as = 'gruvbox',
        config = function()
            vim.cmd([[colorscheme gruvbox]])

            require("gruvbox").setup({
                overrides = {
                    SignColumn = { bg = "#ff9900" }
                }
            })
        end
    })

    use { 'bennypowers/nvim-regexplainer',
        config = function() require 'regexplainer'.setup() end,
        requires = {
            'nvim-treesitter/nvim-treesitter',
            'MunifTanjim/nui.nvim',
        } }

    use { 'alvarosevilla95/luatab.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
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
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim_web_devicons',
        },
    })

    use 'wbthomason/packer.nvim'
    use 'karb94/neoscroll.nvim'
    use 'windwp/windline.nvim'
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
        }
    }
end)
