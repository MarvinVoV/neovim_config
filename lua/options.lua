-- Disable newtrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable true color support
vim.opt.termguicolors = true

-- Set the LANG variable to English
vim.env.LANG = 'en_US.UTF-8'

-- Set tabs to spaces and define the number of spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Enable line numbers
vim.opt.number = true



-- Enable relative line numbers (optional)
vim.opt.relativenumber = false

-- Enable line wrapping
vim.opt.wrap = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Show line and column numbers in the status line
vim.opt.statusline = '%l:%c'

-- Enable line highlighting
 vim.opt.cursorline = true

 vim.opt.cursorlineopt = 'number'

-- Highlight search results as you type
vim.opt.incsearch = true

-- Ignore case when searching
vim.opt.ignorecase = true

-- Smart case sensitivity when searching
vim.opt.smartcase = true

-- Show matching parentheses
vim.opt.showmatch = true

-- Enable mouse support (optional)
vim.opt.mouse = 'a'

-- Enable clipboard integration (requires 'xclip' or 'xsel' on Linux)
vim.opt.clipboard = 'unnamedplus'

-- Disable swap files and backup files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false


-- Set the default file encoding to UTF-8
vim.opt.encoding = 'utf-8'

-- Enable list feature. display whitespace characters and line endings visually whthin the text.
vim.opt.list = true




-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
