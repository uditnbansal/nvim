vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'cljoly/telescope-repo.nvim'}
        }
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    -- Colorschemes
    use {
        'rose-pine/neovim',
        as = 'rose-pine'
    }
    use('EdenEast/nightfox.nvim')
    use('tomasiser/vim-code-dark')
    use('ellisonleao/gruvbox.nvim')

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- Undotree
    use('mbbill/undotree')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'ms-jpq/coq_nvim'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Auto Complete
    use('nvim-lua/completion-nvim')

    -- tpope's essential plugins
    use('tpope/vim-abolish')
    use('tpope/vim-fugitive')
    use('tpope/vim-repeat')
    use('tpope/vim-surround')
    use('tpope/vim-unimpaired')

    -- file-explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons'},
        tag = 'nightly'
    }

    -- autopairs
    use('jiangmiao/auto-pairs')

    -- lualine (statusline)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- scratch plugin
    use('mtth/scratch.vim')

    -- hop (for quick movements)
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }

    -- focus coding
    -- Lua
    use {
        "folke/twilight.nvim",
        config = function()
            require("twilight").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- tmux navigator
    use { "alexghergh/nvim-tmux-navigation" }
end)
