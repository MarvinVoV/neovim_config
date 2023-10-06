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
require('lsp-config')

-- nvim-cmp
require('nvim-cmp')


-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')


--Initialize BufferLine
require('bufferline').setup{}


-- Toggleterm
require('toggle-term')

-- indent-blankline
require('ibl').setup()




