-- Plugin manager (Packer.nvim)
-- Only required if you have packer configured as `opt`

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    use { "wbthomason/packer.nvim" }
    -- Plugin for git
    use { "tpope/vim-fugitive" }

    -- Lua function
    use { "nvim-lua/plenary.nvim" }
    use { "kyazdani42/nvim-web-devicons" }

    -- Mason
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Toggle term
    use { "akinsho/toggleterm.nvim", tag = '*' }

    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- leap
    use { "ggandor/leap.nvim" }

    -- autocompletion
    use { "hrsh7th/nvim-cmp" }   -- completion plugin

    use { "hrsh7th/cmp-buffer" } -- source for text in buffer
    use { "hrsh7th/cmp-path" }   -- source for file system paths
    use { "hrsh7th/cmp-cmdline" }

    -- snippets
    use { "L3MON4D3/LuaSnip" }             -- snippet engine
    use { "saadparwaiz1/cmp_luasnip" }     -- for autocompletion
    use { "hrsh7th/cmp-nvim-lsp" }         --  Adds LSP completion capabilities
    use { "rafamadriz/friendly-snippets" } -- useful snippets

    -- nvim-treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    -- telescope-fzf-native
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = {
            { "nvim-lua/plenary.nvim" },
        },
    }

    -- Comment
    use { "numToStr/Comment.nvim" }

    -- nvim-tree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    }

    -- lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    }

    -- indent-blankline
    use { "lukas-reineke/indent-blankline.nvim" }


    -- todo-coments
    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }

    -- autopairs
    use { "windwp/nvim-autopairs" }

    -- Formatter
    use { "mhartington/formatter.nvim" }

    -- Which-key
    use { "folke/which-key.nvim" }

    -- alpha-nvim
    use { 'goolord/alpha-nvim' }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
