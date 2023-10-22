vim.o.timeout = true
vim.o.timeoutlen = 300

require("which-key").setup({
    triggers_blacklist = {
        i = { "c", "'", "<c-s>", "j", "k" },
        v = { "j", "k" },
    },
})
