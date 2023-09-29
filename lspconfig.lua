
local lsp = require('lspconfig')
-- LSP configuration for Python
lsp.pyright.setup {
    root_dir = lsp.util.root_pattern('.git', '.venv', '.root'),
}

-- LSP configuration for Java
local cmd = { "jdtls" }
lsp.jdtls.setup {
    cmd = cmd,
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    on_attach = function(client, bufnr) 
        vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
        require('coc-nvim').on_attach(client, bufnr)
    end,
}

-- LSP configuration for TS
lsp.tsserver.setup {
    -- config
}
