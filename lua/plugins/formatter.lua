local util = require "formatter.util"

require("formatter").setup({
    logging = false,
    log_level = vim.log.levels.WARN,
    filetype = {
        lua = {
            require('formatter.filetype.lua').stylelua
        },
        python = {
            require('formatter.filetype.python').black
        },
        java = {
            require('formatter.filetype.java').clangformat
        },
        json = {
            require('formatter.filetype.json').fixjson
        },
        sh = {
            require('formatter.filetype.sh').shfmt
        },

        ["*"] = {
            require("formatter.filetype.any").remove_trailing_whitespace
        }
    }
})
