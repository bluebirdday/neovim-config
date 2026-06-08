-- vim automatically includes the file in the root lsp/ dir
vim.lsp.enable({"luals", "php", "ts_ls"})

vim.diagnostic.config({ virtual_text = true })

-- Buffer-local LSP keymaps not covered by Neovim's 0.11+ defaults.
-- Defaults already provide: K (hover), grn (rename), gra (code action),
-- grr (references), gri (implementation), [d / ]d (diagnostics).
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition,
            vim.tbl_extend("force", opts, { desc = "Go to definition" }))
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float,
            vim.tbl_extend("force", opts, { desc = "Show diagnostic" }))
    end,
})

