vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.hl.on_yank({ timeout = 300 })
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown" },
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "en"
    end,
})

-- PHP auto-indent fix: the built-in indentexpr (GetPhpIndent) relies on Vim's
-- :syntax/synID, which treesitter highlighting displaces, so it returns 0 and
-- newlines land at column 0. Fall back to autoindent + smartindent.
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "php" },
    callback = function()
        vim.bo.indentexpr = ""
        vim.bo.autoindent = true
        vim.bo.smartindent = true
    end,
})

