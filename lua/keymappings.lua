-- Leader key
vim.g.mapleader = ',' 

local options = {
    noremap = true,
    silent = true
}

-- Clear search highlighting with <Esc>
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', options)

-- Save the current file with <leader>s
vim.api.nvim_set_keymap('n', '<Leader>s', ':w<CR>', options)

-- Reload the current file with <leader>r
vim.api.nvim_set_keymap('n', '<Leader>r', ':e<CR>', options)

-- Open a new tab with <leader>t
vim.api.nvim_set_keymap('n', '<Leader>t', ':tabnew<CR>', options)

-- Move between tabs with <leader>h and <leader>l
vim.api.nvim_set_keymap('n', '<Leader>h', ':tabprev<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>l', ':tabnext<CR>', options)

-- Toggle line numbers with <leader>l
vim.api.nvim_set_keymap('n', '<Leader>L', ':set relativenumber!<CR>', options)

-- Resize windows with <C-h>, <C-j>, <C-k>, <C-l>
vim.api.nvim_set_keymap('n', '<C-h>', ':resize -2<CR>', options)
vim.api.nvim_set_keymap('n', '<C-j>', ':resize +2<CR>', options)
vim.api.nvim_set_keymap('n', '<C-k>', ':vertical resize -2<CR>', options)
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical resize +2<CR>', options)


-- Nvim-tree  See :help nvim-tree-commands
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeFocus<CR>', options)


-- Use Telescope for enhanced searching (requires 'telescope.nvim' plugin)
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', options)


-- format
vim.api.nvim_set_keymap('n', '<leader>nf', ':Neoformat<CR>', options)

