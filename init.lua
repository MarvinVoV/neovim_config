-- Load settings
require('options')

-- Load key mappings
require('keymappings')

-- Load and run plugin configuration
require('plugins')

-- Load colorscheme
require('themes')

-- Load autocommands
require('autocommands')

-- Initialize lualine
require('lualine').setup {
    options = {
        theme = 'auto'
    },
}

-- Initialize LSP
require('lspconfig')

-- nvim-cmp
require('nvim-cmp')
