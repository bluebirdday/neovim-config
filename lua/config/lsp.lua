-- vim automatically includes the file in the root lsp/ dir.
-- Enable a server only if its binary is on PATH, so the same config works
-- everywhere: full LSP locally (servers installed), silently inactive on remote
-- servers where they aren't — no error, no overhead. To turn LSP on for a box,
-- just install the relevant server binary.
local lsp_servers = {
  luals = "lua-language-server",
  php   = "phpactor",
  ts_ls = "typescript-language-server",
}
local enabled = {}
for name, bin in pairs(lsp_servers) do
  if vim.fn.executable(bin) == 1 then enabled[#enabled + 1] = name end
end
vim.lsp.enable(enabled)

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

