-- Load settings
require('options')

-- Load key mappings
require('keymappings')

-- Load colorscheme
require('themes')

-- Load autocommands
require('autocommands')

-- Load and run plugin configuration
require('plugin-config')

-------- Plugins Start ---------------
-- dashboard
require('plugins.alpha')
-- mason lsp
require('plugins.lsp-config')
-- nvim-tree
require('plugins.nvim-tree')
-- nvim-cmp
require('plugins.nvim-cmp')
-- autopairs
require('plugins.autopairs')
-- toggleterm
require('plugins.toggleterm')
-- comment
require('plugins.comment')
-- todo comments
require('plugins.todo-comments')
-- which-key
require('plugins.which-key')
-- bufferline
require('plugins.bufferline')
-- indent-blankline
require('plugins.indent-blankline')
-- lualine
require('plugins.lualine')
-- nvim-treesitter
require('plugins.treesitter')
-- leap
require('plugins.leap')
-- telescope
require('plugins.leap')
-- noice
require('plugins.noice')
-- diffview
require('plugins.diffview')
-------- Plugins End ---------------


